function GetBitdefenderPoliciesList {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$PolicyID
    )

    $Options = @{}

    $Options.policyId = $PolicyID

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDPoliciesAPIURI -Method "getPolicyDetails" -Options $Options

    return $ret   
}