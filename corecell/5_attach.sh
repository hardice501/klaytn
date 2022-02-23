

if [ $# -eq 0 ]; then
  echo "Error: need value ( value[network] : cn, en, pn )"
  exit 0
fi
DIR=`dirname "$0"`
cd $DIR

$PWD/$1/bin/k$1 attach $PWD/$1/data/klay.ipc

