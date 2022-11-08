# kasutaja andmed käsurea parameetritena
param(
$kasutajaNimi,
$taisNimi,
$kontoKirjeldus
)
# määrame kasutajale parool, konverteerides turvatud tektiks
$KasutajaParool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
# loome kasutaja kasutades loodud parooli
New-LocalUser $kasutajaNimi -Password $KasutajaParool -FullName $taisNimi -Description $kontoKirjeldus