## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```
forge create ContractName --interactive

forge clean (to clear build cache)

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/CounterScript.s.sol: --rpc-url <your_rpc_url> --private-key <your_private_key>
```
OR

when using with cast private key to deploy to anvil blockchain:

```shell
$ forge script script/Ping.s.sol:DeployPingPong --rpc-url http://127.0.0.1:8545 --account devWalletOne --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --broadcast -vvvv  
```

OR

to deploy to temporary anvil blockchain:

```shell
$ forge script script/Ping.s.sol:DeployPingPong  
```

### Cast

```shell
$ cast <subcommand>
```

To convert hex to dec:

```shell
cast --to-base 0x8 dec
```

To cast a private key:

```shell
cast wallet import walletName --interactive
```
```shell
cast wallet list
```
```shell
$ forge script script/Ping.s.sol:DeployPingPong --rpc-url http://127.0.0.1:8545 --account walletName --sender <walletPubKey> --broadcast -vvvv  
```
Check wallet keystore (from home directory):
```shell
cd .foundry/keystores/
```
Clean bash history:
```shell
history -c
```
```shell
rm .bash_history
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
