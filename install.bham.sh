#!/bin/bash

echo "Clearing out old /gpfs/sysapps/slurm-interactive-jobs/stubl/bin and installing new files"

rm -rf /gpfs/sysapps/slurm-interactive-jobs/stubl/bin

mkdir -p /gpfs/sysapps/slurm-interactive-jobs/stubl/bin
cp -r bin/fisbatch_* /gpfs/sysapps/slurm-interactive-jobs/stubl/bin/.

chgrp -R sysmaint-admin /gpfs/sysapps/slurm-interactive-jobs/stubl/

chmod -R o-w /gpfs/sysapps/slurm-interactive-jobs/stubl/
chmod -R o+rX /gpfs/sysapps/slurm-interactive-jobs/stubl/
chmod -R g=o /gpfs/sysapps/slurm-interactive-jobs/stubl/
