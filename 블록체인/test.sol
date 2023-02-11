pragma solidity ^0.4.23;


contract accesscontrol{

    event AdminAdded(address newAdmin,address addingAdmin);
    event UserDeviceMappingAdded(address user, address device, address addingAdmin, address fog);
    event FogDeviceMappingAdded(address fog, address device, address addingAdmin);
    event DeviceDoesnotExist(address device, address fog, address sender);
    event AdminDeleted(address newAdmin, address deletingAdmin);
    event UserDeviceAllMappingDeleted(address user, address deletingAdmin);
    event FogDeviceAllMappingDeleted(address fog, address deletingAdmin);
    event Authenticated(address user, address device, address fog);
    event NotAuthenticated(address user);
    event TokenCreated(bytes32 uid, address user, address device, address fog);


    address [] admins;
    struct Token{
        bytes32 UID;
        address user;
        address dev;
        address fog;
    }
    struct Devices{
        address dev;
        address fog;
    }


    Token [] public Tokens;
    mapping(address=>Devices[]) public users_devices;
    mapping(address=>address[]) public fog_devices;
    modifier onlyAdmin{
        bool admin=false;
        for(uint256 i =0; i<admins.length; i++){
            if(msg.sender==admins[i]){
                admin=true;
                break;
            }
        }
        if(!admin){
            revert();
        }
        else{
            _;
        }
        
    }
    function addAdmin(address newAdmin) public onlyAdmin{
        admins.push(newAdmin);
        emit AdminAdded(newAdmin,msg.sender);
    }
    constructor(address defaultadmin) public{
        admins.push(defaultadmin);
        emit AdminAdded(defaultadmin,msg.sender);
    }
    function addUserDeviceMapping(address user,address device,address fog) public onlyAdmin{
        users_devices[user].push(Devices(device,fog));
        emit UserDeviceMappingAdded(user,device,msg.sender,fog);
   
    }

    function addDeviceFogMapping(address fog,address device) public onlyAdmin{
        fog_devices[fog].push(device);
        emit FogDeviceMappingAdded(fog,device,msg.sender);
    }    


    function delAdmin(address admin) public onlyAdmin{
        if(admins.length<2){
            revert();
        }
        else{
            uint256 i = 0;
            while(i<admins.length){
                if(admins[i]==admin){
                    delete admins[i];
                    emit AdminDeleted(admin,msg.sender);
                }
                i++;
            }
        }
    }
    function delUser(address user) public onlyAdmin{
        delete users_devices[user];
        emit UserDeviceAllMappingDeleted(user,msg.sender);
    }
    function delDev(address fog) public onlyAdmin{
        delete fog_devices[fog];
       emit FogDeviceAllMappingDeleted(fog,msg.sender);
    }
  

    function requestAuthentication(address device, address fog) public {
            
            emit Authenticated(msg.sender,device,fog);
            bytes32 UID= keccak256(device,fog,msg.sender,block.timestamp);
            Tokens.push(Token(UID,msg.sender,device,fog));
            emit TokenCreated(UID,msg.sender,device,fog);
            
           
        
    }
}
