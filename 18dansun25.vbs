' Texte à afficher et à prononcer
Dim message
message = "coucou, je suis juste la petite voix qui vient te dire que le 18 25 viens detruire ton pc et ceux à tout jamais. amuse toi bien à le reparer fdp trer contant."

' Créer un objet SAPI.SpVoice pour la synthèse vocale
Dim voice
Set voice = CreateObject("SAPI.SpVoice")

Dim voices
Set voices = voice.GetVoices()

For Each v In voices
    If InStr(v.GetDescription, "Microsoft Julie") > 0 Then
        voice.Voice = v
        Exit For
    End If
Next

' Créer un objet WScript.Shell pour afficher la boîte de dialogue
Dim shell
Set shell = CreateObject("WScript.Shell")

' Afficher le message dans une boîte de dialogue
shell.Popup message, 1, "Message VBS", 64

' Lire le texte à voix haute immédiatement après
voice.Speak message

' Libérer les objets
Set voice = Nothing
Set shell = Nothing
