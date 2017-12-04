CF_TARGET=`cf target | awk '{print tolower($0)}' | grep "api" | cut -d" " -f5| xargs`
echo Using target $CF_TARGET
addTarget()
{
  cf set-env $1 CF_TARGET $CF_TARGET
  cf restage $1 &
}

addTarget accounts
addTarget portfolio
addTarget quotes
addTarget users
addTarget webtrader
