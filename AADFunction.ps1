function CheckUserExists {
    param (
        [string]$Username
    )

    # Connect to Microsoft Graph
    Connect-MgGraph

    # Get all users
    $users = Get-MgUser 

    # Iterate through all users
    foreach ($user in $users) {
        # If the user is found, return true
        if ($user.DisplayName -eq $Username) {
            return $true
        }
    }

    # If the user is not found, return false
    return $false
}
