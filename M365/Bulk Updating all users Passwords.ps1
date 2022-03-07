#Bulk Updating all users Passwords


#Create CSV template with headers of Userprincipalname and Password


Import-Csv -Path 'C:\Users\NickRoss\OneDrive - PAX8\Scripts\PowershelltesttemplateMako.csv' |%{Set-MsolUserPassword -userPrincipalName $_.UserPrincipalName �NewPassword $_.Password -ForceChangePassword $True}