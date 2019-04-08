#!/bin/bash

BASEDIR="/rds/bear-apps/system/software/slurm-interactive-jobs/stubl/bin/"

echo "Clearing out old ${BASEDIR}/bin and installing new files"

rm -rf ${BASEDIR}/bin

mkdir -p ${BASEDIR}/bin
cp -r bin/fisbatch_* ${BASEDIR}/bin/.

chgrp -R sysmaint-admin ${BASEDIR}

chmod -R o-w ${BASEDIR}
chmod -R o+rX ${BASEDIR}
chmod -R g=o ${BASEDIR}
