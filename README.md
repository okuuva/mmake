# C Build environment in a docker container

C Build environment in a docker container, featuring colored output and compiler cache

## Features

 - GCC 6
 - `ccache` for fast recompilation
 - Support for cross-compiling with external toolchain

## Usage

### Compilation

It is recommended to use this alias

```
alias mmake='docker run --rm -v "$(pwd):/src" -t spikeb/mmake'
```

Then, use it just as you would use 'make'

```
cd test
mmake
```

### Cross-Compilation

Adjust to the path to your toolchain directory

```
alias xmake='docker run --rm -v "$(pwd):/src" -v "/toolchain/path:/toolchain" -t spikeb/xmake'
```

Then, use it just as you would use 'make'
```
cd test
xmake
```


## Notes

A '.ccache' directory will be generated in the directory of execution

To avoid the delay in the creation and deletion of the conttainer, you can leave the container running for faster execution. Use these aliases

```
alias runmake='docker run --rm -d -v "$(pwd):/src" --entrypoint /bg.sh -t --name mmake spikeb/mmake'
alias mmake='docker exec -t mmake /run.sh'
```


Details on the original tooling at [ownyourbits](https://ownyourbits.com/2017/06/20/c-build-environment-in-a-docker-container/)
