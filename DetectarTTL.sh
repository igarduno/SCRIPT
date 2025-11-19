if [ -z "$1" ]; then
echo "Uso: $0 <IP> o <rango IP>"
exit 1
fi
nmap -O --osscan-guess $1 | grep -E "Running:|OS CPE:|Device type:|Aggressive OS guesses:"
