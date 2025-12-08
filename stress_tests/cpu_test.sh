
#This script runs an infinite loop in Python that continuously consumes CPU resources.
#It is intended to stress test the CPU by keeping it busy without performing any actual computations.


python3 - <<EOF &
while True:
    pass
EOF


