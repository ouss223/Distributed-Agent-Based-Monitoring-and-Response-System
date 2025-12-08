
#This script continuously writes data to a file to stress test disk I/O.

python3 - <<EOF &
import os, time

file_path = "/tmp/disk_test.bin"
chunk = b"0" * 5_000_000  # 5 MB chunks
max_size = 100_000_000     # 100 MB max file

with open(file_path, "wb") as f:
    while True:
        f.write(chunk)
        f.flush()
        # Stop growth to avoid filling disk
        if f.tell() >= max_size:
            f.seek(0)  # overwrite from start
        #time.sleep(0.05)  # small pause to avoid freezing VM
EOF
