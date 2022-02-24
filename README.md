124[![Go Report Card](https://goreportcard.com/badge/github.com/klaytn/klaytn)](https://goreportcard.com/report/github.com/klaytn/klaytn)
[![CircleCI](https://circleci.com/gh/klaytn/klaytn/tree/dev.svg?style=svg)](https://circleci.com/gh/klaytn/klaytn/tree/dev)
[![codecov](https://codecov.io/gh/klaytn/klaytn/branch/dev/graph/badge.svg)](https://codecov.io/gh/klaytn/klaytn)
[![GoDoc](https://godoc.org/github.com/klaytn/klaytn?status.svg)](https://pkg.go.dev/github.com/klaytn/klaytn)

# Klaytn

Official golang implementation of the Klaytn protocol. Please visit [KlaytnDocs](https://docs.klaytn.com/) for more details on Klaytn design, node operation guides and application development resources.
## Require
Go-lang version >= v1.16  
Truffle version <= 5.1.25  <br/><br/>

## Reinstall package
Changed Go-lang version :  

 Downloads go-lang package in <https://go.dev/dl/>  then   
```
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ./go1.*.*.****-****.tar.*
```


Changed Truffle version :  
```
npm uninstall -g truffle
npm install -g truffle@5.1.23 
```
## Building from Sources

Building the Klaytn node binaries as well as utility tools, such as `kcn`, `kpn`, `ken`, `kbn`, `kscn`, `kspn`, `ksen`, `kgen`, `homi` and `abigen` requires
both a Go (version 1.14.1 or later) and a C compiler. You can install them using
your favorite package manager.
Once the dependencies are installed, run

    make all (or make {kcn, kpn, ken, kbn, kscn, kspn, ksen, kgen, homi, abigen})

## How to use shell script(klaytn/klay)

How to use script(klaytn/klay)
```
Usage:
    klay <command> <value>
The commands are:
       setup value      Same as '$ cp build/bin/k*n corecell/*n/bin/k*n.value' (value is program version. ex: 1.0.2)
       init value       Delete all nodes & init nodes(value is program version)
       start            Start kcn,kpn,ken(CCN & EN)
       status           Show CCN, EN status
       stop             Stop all network
       attach value     Attach to value(value:cn,pn,en)
       log value        Show value's log(value:cn,pn,en)
       remvdata         remove chain data
```

## Run Local network 
Default Shell : zsh
```
echo "export PATH=\$PATH:`pwd`" >> ~/.zshrc
source ~/.zshrc
make all
klay setup 1.0.0
klay init 1.0.0
klay start
```
Default Shell : bash
```
echo "export PATH=\$PATH:`pwd`" >> ~/.bashrc
source ~/.bashrc
make all
klay setup 1.0.0
klay init 1.0.0
klay start
```

## Test Deploy

```
cd truffletest
truffle deploy --network klaytn --reset
truffle --network klaytn console
```
In truffle console(call hashfunction and show logs)
```
> let pre = await Precompiled.deployed()
> pre.callmimc(["0x0000000000000000000000000000000000000000000000000000000000000000"])
> pre.callposeidon(["0x0000000000000000000000000000000000000000000000000000000000000001"])
> await pre.getPastEvents("showbytes32",{ fromBlock:0, toBlock:'latest'})
```