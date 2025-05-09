function Remove-BitdefenderAccount {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$AccountID
    )

    $Options = @{}

    $Options.accountId = $AccountID

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDPoliciesAPIURI -Method "deleteAccount" -Options $Options

    return $ret   
}