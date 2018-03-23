function New-PesterLab ($Path, $Name) {
    New-Item -Path $Path -Name $Name -ItemType Directory -Force
    New-Item -Path "$Path\$Name" -Name "$Name.config" -ItemType File -Force
    Set-Content -Path "$Path\$Name.config" -Value 'Pester is cool' -Force
}
