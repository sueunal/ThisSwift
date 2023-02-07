pragma solidity ^0.4.23;


contract accesscontrol{
    address [] admins;
    address defaultAdmin;
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
        AdminAdded(newAdmin,msg.sender);
    }
    constructor(address defaultadmin) public{
        admins.push(defaultadmin);
        AdminAdded(defaultadmin,msg.sender);
    }
    function addUserDeviceMapping(address user,address device,address fog) public onlyAdmin{
        bool deviceExists=false;
        for(uint256 i=0; i<fog_devices[fog].length; i++){
            if(fog_devices[fog][i]==device){
            fog=users_devices[msg.sender][i].fog;
            deviceExists=true;
            break;
            }
        }
    
    if(deviceExists){
        users_devices[user].push(Devices(device,fog));
        UserDeviceMappingAdded(user,device,msg.sender,fog);
        }
    else{
        DeviceDoesnotExist(device,fog,msg.sender);
        }
    }

    function addDeviceFogMapping(address fog,address device) public onlyAdmin{
        fog_devices[fog].push(device);
        FogDeviceMappingAdded(fog,device,msg.sender);
    }    
    event AdminAdded(address newAdmin,address addingAdmin);
    event UserDeviceMappingAdded(address user, address device, address addingAdmin, address fog);
    event FogDeviceMappingAdded(address fog, address device, address addingAdmin);
    event DeviceDoesnotExist(address device, address fog, address sender);

    function delAdmin(address admin) public onlyAdmin{
        if(admins.length<2){
            revert();
        }
        else{
            uint256 i = 0;
            while(i<admins.length){
                if(admins[i]==admin){
                    delete admins[i];
                    AdminDeleted(admin,msg.sender);
                }
                i++;
            }
        }
    }
    function delUser(address user) public onlyAdmin{
        delete users_devices[user];
        UserDeviceAllMappingDeleted(user,msg.sender);
    }
    function delDev(address fog) public onlyAdmin{
        delete fog_devices[fog];
        FogDeviceAllMappingDeleted(fog,msg.sender);
    }
    event AdminDeleted(address newAdmin, address deletingAdmin);
    event UserDeviceAllMappingDeleted(address user, address deletingAdmin);
    event FogDeviceAllMappingDeleted(address fog, address deletingAdmin);

    function requestAuthentication(address device, address fog) public {
        bool deviceExists = false;
        for(uint256 i =0; i<fog_devices[fog].length; i++){
            if(fog_devices[fog][i]==device){
            fog=users_devices[msg.sender][i].fog;
            deviceExists=true;
            break;
            }
        }
        if(!deviceExists){
            DeviceDoesnotExist(device,fog,msg.sender);
        }
        else{
            bool auth=false;
            for(uint256 m =0; m<users_devices[msg.sender].length; m++){
                if(users_devices[msg.sender][m].dev==device){
                    auth=true;
                    break;
                }
            }
            if(auth){
                Authenticated(msg.sender,device,fog);
                bytes32 UID= keccak256(device,fog,msg.sender,block.timestamp);
                Tokens.push(Token(UID,msg.sender,device,fog));
                TokenCreated(UID,msg.sender,device,fog);
            }
            else if(!auth){
                NotAuthenticated(msg.sender);
            }
        }
    }
    event Authenticated(address user, address device, address fog);
    event NotAuthenticated(address user);
    event TokenCreated(bytes32 uid, address user, address device, address fog);

}