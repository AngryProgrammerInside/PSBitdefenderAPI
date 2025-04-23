function Get-BitdefenderNotificationSettings {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$AccountID = $null
    )

    $Options = @{}

    if ($AccountID) { $Options.accountId = $AccountID }

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDAccountsAPIURI -Method "getNotificationSettings" -Options $Options

    return $ret   
}