set file "echo_server.tcl"
source $file
set texto "inicia servidor con el puerto: "
set serverActive no
wm title . {Eco Server}
. configure -height 400
. configure -width 340
label .titulo -text "Server de Eco" -font {times -24 bold} -foreground blue
button .activar -text "Activar" -font {times -15 bold} -foreground orange -background black -command start_server
button .cerrar -text "Cerrar" -font {times -15 bold} -foreground orange -background black -command finish
label .nPort -foreground blue -text "-Número de puerto-" -justify left
label .lestado -foreground blue -text "Estado" -justify left
label .mensajeR -foreground blue -text "-Mensaje Recibido-" -justify left
entry .puerto -font {Helvetica -12 } -width 10 -textvariable n_puerto -justify right
text .estado -width 45 -height 6
text .mensaje_r -width 45 -height 6 

#-command "print 5"
place .titulo -x 75 -y 5
place .activar -x 25 -y 40 
place .cerrar -x 200 -y 40
place .nPort -x 100 -y 75
place .puerto -x 120 -y 90
place .lestado -x 5 -y 115
place .estado -x 5 -y 130
place .mensajeR -x 5 -y 250
place .mensaje_r -x 5 -y 270
proc start_server {} {
	if {$::n_puerto == ""} {
		tk_messageBox -message "El campo Numero de puerto no puede estar vacio" -title "Puerto vacio" -icon warning
	} else {
		if { $::serverActive == no} {
			set ::serverActive yes
			set ::texto $::texto$::n_puerto
			set cad "\n"
			set ::texto $::texto$cad
			Echo_Server $::n_puerto
		} else {
			tk_messageBox -message "El servidor ya esta activo" -title "Start Server" -icon warning
		}
	}
}