# Geth
'''
geth --datadir test --networkid 1004 --http --http.addr "0.0.0.0" --http.port 9000 --http.corsdomain "*" --http.api "admin,eth,debug,miner,net,txpool,personal,web3" --syncmode full --ipcpath "~/.ethereum/geth.ipc" --port 30300 --ws --ws.addr "0.0.0.0" --ws.port 9005 --ws.origins "*" --ws.api "miner,eth,net,web3" --allow-insecure-unlock console
'''
