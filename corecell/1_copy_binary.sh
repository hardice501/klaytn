if [ $# -eq 0 ]; then
  echo "Error: need value ( value[version] : 1.0.0, 2.0.1, ...)"
  exit 0
fi

DIR=`dirname "$0"`
cd $DIR
cp ../build/bin/kcn cn/bin/kcn_$1
cp ../build/bin/kpn pn/bin/kpn_$1
cp ../build/bin/ken en/bin/ken_$1
