# Windows
You're using Windows? No wonder you have pain.

## Setup
To truly hide the pain, add this folder to your `PATH` environment variable. This will make these scripts available from any Powershell instance.

## Tools
### Get-Process-Using-Port
Provides the PID of the process that is using a given port, if any.

#### Usage
```powershell
Get-Process-Using-Port <PORT_NUMBER>
```

### Stop-Process-Using-Port
Stops the process that is using a given port.

#### Usage
```powershell
Stop-Process-Using-Port <PORT_NUMBER>
```