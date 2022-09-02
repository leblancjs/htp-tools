function Get-Process-Using-Port {
  try {
    (Get-Process -Id (Get-NetTCPConnection -LocalPort $args[0] -ErrorAction Stop).OwningProcess).Id
  } catch {
    $null
  }
}

if ($MyInvocation.InvocationName -eq '.') {
  exit
}

$port = $args[0]

"Looking for process using port $port..."
$owning_pid = Get-Process-Using-Port $port
if (!$owning_pid) {
  "Found no process using port $port."
  exit
}
"Process with ID $owning_pid is using port $port."
