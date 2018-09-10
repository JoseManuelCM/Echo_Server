wm title . {Eco Client}
. configure -height 400
. configure -width 320
label .titulo -text "Cliente de Eco" -font {times -24 bold} -foreground blue
button .conectar -text "Conectar" -font {times -15 bold} -foreground orange -background black -command hola
button .cerrar -text "Cerrar" -font {times -15 bold} -foreground orange -background black 
label .nPort -foreground blue -text "-Número de puerto-" -justify left
label .lestado -foreground blue -text "-Estado-" -justify left
label .mensajeR -foreground blue -text "-Mensaje Recibido-" -justify left
entry .puerto -font {Helvetica -12 } -width 10 -textvariable n_puerto -justify right
message .estado -background white -text " " -padx 150 -pady 40 -font {Helvetica -12} -textvariable t_estado -justify right
message .mensaje_r -background white -text " " -padx 150 -pady 40 -font {Helvetica -12} -textvariable t_mensaje_r -justify right
#-command "print 5"
place .titulo -x 75 -y 5
place .conectar -x 25 -y 40 
place .cerrar -x 200 -y 40
place .nPort -x 100 -y 75
place .puerto -x 120 -y 90
place .lestado -x 5 -y 115
place .estado -x 5 -y 130
place .mensajeR -x 5 -y 250
place .mensaje_r -x 5 -y 270