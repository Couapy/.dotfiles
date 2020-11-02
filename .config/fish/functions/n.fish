# Defined in /etc/fish/config.fish @ line 28
function n
	nnn -aeH $argv
    if test -e $NNN_TMPFILE
		source $NNN_TMPFILE
    end
end
