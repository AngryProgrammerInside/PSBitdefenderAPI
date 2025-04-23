function Get-BitdefenderCompanyDetailsByUser {
    [CmdletBInding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$Username,

        [Parameter(Mandatory=$True)]
        [String]$Password
    )

    $Options = @{}

    $Options.username = $Username
    $Options.password = $Password

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDCompaniesAPIURI -Method "getCompanyDetailsByUser" -Options $Options

    return $ret
}