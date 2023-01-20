#Read a file containing a list of users into a powershell array. (Tutor will provide file) 

function readCSV {
    param([string]$filePath)
    
    $PSArray = Import-Csv -Path $filepath

    return $PSArray

}