## Random Pieces Of Information

### GETH

`geth --dev --rpc --rpcport 8545 --rpcapi=\"db,eth,net,web3,personal,web3\" --keystore ./keystores console --mine --dev.period=0`

`--etherbase 1 || --etherbase <account>`

      ps -ef |grep geth
      netstat -an | grep LISTEN
      curl localhost:8545
      curl 0.0.0.0:8545
      tail geth.log
      screen -dmS ./go-ethereum/build/bin/geth --rpc --rpcport "8545" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --verbosity 3 2 > geth.log

`lsof -i :3001`
`netstat -vanp tcp | grep 3001`

`ps -ef | grep geth`

`sudo chown node:node geth`

***

### TRUE RANDOM BITS
`npm version prerelease`

`Buffer.from(buf.data, 'hex').toString()`

`ALTER USER root WITH SUPERUSER;`

`# DISABLE_AUTO_TITLE="true"`

      # Uncomment the following line to enable command auto-correction.
      export ZSH=$HOME/.oh-my-zsh
      plugins=(git dotenv osx)
      ZSH_THEME="agnoster"
      export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
      source $ZSH/oh-my-zsh.sh

`psql -U username -h host -c "\copy (query)) to '~/myfile.csv' WITH (FORMAT CSV, FORCE_QUOTE *);"`

import file into node:  
`repl: node -i -e "$(< yourScript.js)"`

***

### BTC RPC
`bitcoin-cli -rpcconnect=10.68.2.119 -rpcport=8332 -rpcuser=<username> -rpcpassword=<pw> getrawtransaction <txid> 1 || -server=1 -getinfo || getrawmempool true`

      rpcuser=<username>
      rpcpassword=<pw>
      rpcallowip=<hostip>
      rpcallowip=0.0.0.0
      printtoconsole=1
      regtest=1
      testnet=0
      server=1
      daemon=1
      txindex=1
      debug=1
      rest=1

***

## AWS LOGS

add to `.zshrc` file:  

      function getlogsattime () {
      if [[ "$1" == "prod" ]] ; then
         awslogs get <ecs_path> "$2*" --start="$3" --end="$4" --profile <associated_profile> "$5"
      fi

      if [[ "$1" == "stage" ]] ; then
         awslogs get <ecs_path> "$2*" --start="$3" --profile <associated_profile> "$4"
      fi

      if [[ "$1" == "dev" ]] ; then
         awslogs get <ecs_path> "$2*" --start="$3" --profile <associated_profile> "$4"
      fi
      }


      function getlogs () {
      if [[ "$1" == "prod" ]] ; then
         awslogs get <ecs_path> "$2*" --start=""$3"m ago" --profile <associated_profile> "$4"
      fi

      if [[ "$1" == "stage" ]] ; then
         awslogs get <ecs_path> "$2*" --start=""$3"m ago" --profile <associated_profile> "$4"
      fi

      if [[ "$1" == "dev" ]] ; then
         awslogs get <ecs_path> "$2*" --start=""$3"m ago" --profile <associated_profile> "$4"
      fi
      }


      function watchlogs () {
      getlogs "$@" --watch
      }