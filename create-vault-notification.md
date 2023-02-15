#Backup Vault Notification
```aws backup put-backup-vault-notifications
    --backup-vault-name myBackupVault
    --sns-topic-arn arn:aws:sns:region:account-id:myBackupTopic
    --backup-vault-events BACKUP_JOB_STARTED BACKUP_JOB_COMPLETED BACKUP_POINT_MODIFIED```
