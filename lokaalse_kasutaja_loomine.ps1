# määrame kasutajale parool, konverteerides turvatud tektiks
$KasutajaParool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
# loome kasutaja kasutades loodud parooli
New-LocalUser 'kasutaja1' -Password $KasutajaParool -FullName 'Esmane tavakasutaja' -Description 'Local Account - kasutaja1'