function Get-BitdefenderAccountList {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$False)]
        [string]$CompanyID = $null,

        [Parameter(Mandatory=$False)]
        [string]$Page = $null,

        [Parameter(Mandatory=$False)]
        [string]$PerPage = $null
    )

    $Options = @{}

    if ($CompanyID) { $Options.companyId = $CompanyID }
    if ($Page) { $Options.page = $Page }
    if ($Page) { $Options.perPage = $PerPage }

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDAccountsAPIURI -Method "getAccountsList" -Options $Options

    return $ret   
}