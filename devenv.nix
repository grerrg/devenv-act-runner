{ pkgs, ... }:

{
  packages = [ pkgs.hello ];

  scripts.say-bye.exec = ''
    echo bye
  '';
}
