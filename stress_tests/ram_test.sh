#This script allocates a large amount of memory in Python and keeps it allocated to stress test RAM usage.


python3 - <<EOF &
data = []
for _ in range(50_000_000):  # each int ~8 bytes → ~400MB
    data.append(0)
while True:
    pass  # keep memory allocated
EOF
