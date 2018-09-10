wm title . {Eco Client}
. configure -height 400
. configure -width 320
label .titulo -text "Cliente de Eco" -font {times -24 bold} -foreground blue
button .conectar -text "Conectar" -font {times -15 bold} -foreground orange -background black
button .cerrar -text "Cerrar" -font {times -15 bold} -foreground orange -background black 
button .enviar -text "Enviar" -font {times -12 bold} -foreground orange -background black
label .nPort -foreground blue -text "-Número de puerto-" -justify left
label .dirIp -foreground blue -text "- Dirección IP -" -justify left
label .lestado -foreground blue -text "-Estado-" -justify left
label .mensaje -foreground blue -text "-Mensaje-" -justify left
label .mensajeR -foreground blue -text "-Mensaje Recibido-" -justify left
entry .puerto -font {Helvetica -12 } -width 10 -textvariable n_puerto -justify right
entry .dip -font {Helvetica -12} -width 15 -textvariable d_ip -justify right 
message .estado -background white -text " " -padx 150 -pady 40 -font {Helvetica -12} -textvariable t_estado -justify right
entry .entry_mensaje -font {Helvetica -15} -width 25 -textvariable t_mensaje -justify right
message .mensaje_r -background white -text " " -padx 150 -pady 40 -font {Helvetica -12} -textvariable t_mensaje_r -justify right
#-command "print 5"
place .titulo -x 75 -y 5
place .conectar -x 25 -y 40 
place .cerrar -x 200 -y 40
place .nPort -x 15 -y 70
place .puerto -x 30 -y 85
place .dirIp -x 190 -y 70
place .dip -x 180 -y 85
place .lestado -x 5 -y 110
place .estado -x 5 -y 125
place .mensaje -x 5 -y 225
place .entry_mensaje -x 5 -y 240
place .enviar -x 230 -y 235
place .mensajeR -x 5 -y 270
place .mensaje_r -x 5 -y 290