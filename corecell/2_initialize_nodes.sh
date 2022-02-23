DIR=`dirname "$0"`
cd $DIR

if [ $# -eq 0 ]; then
  echo "Error: need value ( value[version] : 1.0.0, 2.0.1, ...)"
  exit 0
fi


./2-1.deletedata.sh $1
./2-2.initnodes.sh $1

