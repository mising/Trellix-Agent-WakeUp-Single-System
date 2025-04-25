$computer = Read-Host -Prompt 'Enter hostname or IP'

        if (Test-Connection -computername $computer -count 2 -quiet)
        {
        invoke-command -ComputerName $ComputerName -ScriptBlock { & "C:\Program Files\McAfee\Agent\CmdAgent.exe" -p }
        }
        else
        {
        Write-host $computer' is offline'
        }
        
