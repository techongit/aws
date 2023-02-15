AWS Delete recovery points
#!/bin/bash 
aws backup list-recovery-points-by-backup-vault --backup-vault-name <backup-vault>  > rc.json
cat rc.json | jq -r .RecoveryPoints[].RecoveryPointArn > arn.txt
cat arn.txt | while read in;
do 
  aws backup delete-recovery-point --backup-vault-name <backup-vault> --recovery-point-arn "$in";
done
