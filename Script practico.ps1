PS C:\Program Files\WindowsPowerShell\Modules\BackupRegistry> ls
PS C:\Program Files\WindowsPowerShell\Modules\BackupRegistry> Import-Module BackupRegistry

PS D:\> Get-Help Backup-Registry
PS D:\> Backup-Registry -rutaBackup 'D:\tmp\Backups\Registro\'
PS D:\> ls .\tmp\Backups\Registro

PS C:\Program Files\WindowsPowerShell\Modules\BackupRegistry> vim .\Backup-Registry.ps1
PS C:\Program Files\WindowsPowerShell\Modules\BackupRegistry> Import-Module BackupRegistry -Force
PS C:\Program Files\WindowsPowerShell\Modules\BackupRegistry> Backup-Registry -rutaBackup 'D:\tmp\Backups\Registro\'
PS C:\Program Files\WindowsPowerShell\Modules\BackupRegistry> ls 'D:\tmp\Backups\Registro\'

PS D:\> ls 'D:\tmp\Backups\Registro\'
PS D:\> Get-Date
PS D:\> ls 'D:\tmp\Backups\Registro\'

PS D:\> Get-ScheduledTask
PS D:\scripts> Unregister-ScheduledTask "Ejecutar Backup del Registro del Sistema"
PS D:\scripts> Get-ScheduledTask