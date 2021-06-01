function fish_user_key_bindings --description 'Declare user key bindings'
  bind \b backward-kill-word
  bind \e\[3\;5~ kill-word
end