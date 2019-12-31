function NewMarkdownExample() {
    <#
        .SYNOPSIS
            Generates a new markdown example block.

        .NOTES
            Powershell language monicker inserted by the SetPowershellMoniker function.
    #>
    param(
        [Parameter(Mandatory = $True)][string]$Header,
        [Parameter(Mandatory = $True)][string]$Code,
        [Parameter(Mandatory = $False)][string]$Description = $null
    )

    $example = "$Header`n"
    $example += '```' + "`n"
    $example += $Code
    $example += '```' + "`n"

    if ([string]::IsNullOrEmpty($Description)) {
        $example += "`n"
    } else {
        $example += "`n$Description`n"
    }

    return $example
}
