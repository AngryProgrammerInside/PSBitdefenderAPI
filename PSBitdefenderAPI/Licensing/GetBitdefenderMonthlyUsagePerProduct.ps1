function Get-BitdefenderMonthlyUsagePerProduct {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$TargetMonth,
        [Parameter(Mandatory=$false)]
        [string]$CompanyId
    )

    $Options = @{}

    $Options.targetMonth = $TargetMonth
    if ($Null -ne $CompanyId) {
        $Options.companyId = $CompanyId
    }

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDLicensingAPIURI -Method "getMonthlyUsagePerProductType" -Options $Options

    return $ret
}