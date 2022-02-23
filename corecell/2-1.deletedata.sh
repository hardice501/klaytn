DIR=`dirname "$0"`
cd $DIR

rm -rf cn/data/klay/chaindata/ cn/data/klay/LOCK cn/data/klay/transactions.rlp
rm -rf cn/data/kcn cn/data/logs/kcnd.out

rm -rf pn/data/klay/chaindata/ pn/data/klay/LOCK pn/data/klay/transactions.rlp
rm -rf pn/data/kpn pn/data/logs/kpnd.out

rm -rf en/data/klay/chaindata/ en/data/klay/scchaindata en/data/klay/LOCK en/data/klay/transactions.rlp
rm -rf en/data/ken en/data/logs/kend.out

