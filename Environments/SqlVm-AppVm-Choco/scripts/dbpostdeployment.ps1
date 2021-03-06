# Format and initialize the data Disk
Get-Disk | Where-Object partitionstyle -eq 'raw' | Initialize-Disk -PartitionStyle MBR -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "datadisk" -Confirm:$false

# Reboot
Restart-Computer
