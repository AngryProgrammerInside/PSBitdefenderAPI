function Set-BitdefenderAPIURI {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$URI
    )

    $Global:BDBaseAPIURI = $URI
}