function ls --wraps='exa --icons -la' --description 'alias ls=exa --icons -la'
  exa --icons -la $argv; 
end
