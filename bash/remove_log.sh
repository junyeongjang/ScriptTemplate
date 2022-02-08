/bin/bash

find *.log -mtime +30 -exec -rf {} \;
