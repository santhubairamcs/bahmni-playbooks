#!/bin/sh
set -e -x
. /etc/bahmni-installer/bahmni.conf

TIME=`date +%Y%m%d_%H%M%S`

pg_dump -U openerp -a -t markers -t failed_events openerp > /etc/bahmni-installer/atomfeed-backup/openerp_atomfeed_backup_$TIME.sql