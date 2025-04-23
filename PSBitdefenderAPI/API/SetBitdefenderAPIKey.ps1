function Set-BitdefenderAPIKey {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$APIKey
    )

    $Global:BitdefenderAPIKey = $APIKey
}