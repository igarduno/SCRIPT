if [ -z "$1" ]; then
echo "Uso: $0 <IP>"
exit 1
fi
nmap -p- --open $1 | grep ^[0-9] | cut -d/ -f1 | paste -sd, -
