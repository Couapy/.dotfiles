# Defined in /etc/fish/config.fish @ line 28
function n
	nnn -ae $argv
    if test -e $NNN_TMPFILE
		source $NNN_TMPFILE
    end
end
