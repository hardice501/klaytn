DIR=`dirname "$0"`
cd $DIR
if [ $# -eq 0 ]; then
  echo "Error: need value ( value[network] : cn, en, pn )"
  exit 0
fi

tail -f $1/data/logs/k$1d.out

sender = klay.accounts[0]
feePayer = klay.accounts[1]
contractAddr = "0xa65e63c3BFD0Ba43C36E6B6b0D6c4488Dd351a3d"
data = {
  typeInt: 0x31,
  from: sender,
  nonce: klay.getTransactionCount(sender),
  to: contractAddr,
  feePayer: feePayer,
  gas: '0x2e6300',
  gasPrice: klay.gasPrice,
  value: 0,
  input: "0x0059dbc3000000000000000000000000"+feePayer.substr(2,40)
}

data.signatures = klay.signTransaction(data).tx.signatures
klay.sendTransactionAsFeePayer(data)

sender = klay.accounts[0]
feePayer = klay.accounts[1]
contractAddr = "0x38c7f6265Fb5A58C2353cE9526714475BB476316"
data = {
  typeInt: 0x31,
  from: sender,
  nonce: klay.getTransactionCount(sender),
  to: contractAddr,
  feePayer: feePayer,
  gas: '0x2e6300',
  gasPrice: klay.gasPrice,
  value: 0,
  input: "0x8da545b1000000000000000000000000"+feePayer.substr(2,40)
}

data.signatures = klay.signTransaction(data).tx.signatures
klay.sendTransactionAsFeePayer(data)