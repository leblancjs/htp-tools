. .\Get-Process-Using-Port.ps1

$port = $args[0]

"Looking for process using port $port..."
$owning_pid = Get-Process-Using-Port $port
if (!$owning_pid) {
  "Found no process using port $port."
  exit
}
"Process with ID $owning_pid is using port $port."

try {
  "Stopping process with ID ${owning_pid}..."
  Stop-Process $owning_pid
  "Stopped process with ID ${owning_pid}."
} catch {
  Write-Host "Failed to stop process with ID ${owning_pid}." -ForegroundColor Red
}