DIR=`dirname "$0"`
cd $DIR

rm -rf cn/bin/kcn
rm -rf en/bin/ken
rm -rf pn/bin/kpn
cp cn/bin/kcn_$1 cn/bin/kcn
cp pn/bin/kpn_$1 pn/bin/kpn
cp en/bin/ken_$1 en/bin/ken
cn/bin/kcn init --datadir cn/data genesis.json
pn/bin/kpn init --datadir pn/data genesis.json
en/bin/ken init --datadir en/data genesis.json
