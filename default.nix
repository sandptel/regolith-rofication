{ pkgs, ...}:

pkgs.python311.pkgs.buildPythonApplication {
  pname = "rofication";
  version = "main";
  
  src = ./.;
  
 propagatedBuildInputs = with pkgs.python311.pkgs; [dbus-python pygobject3];
  installPhase= ''
  mkdir -p $out/bin
  cp -r ./  $out/bin
  '';
  meta = {
    mainProgram = "rofication";
    description = " Notification system that provides a Rofi front-end ";
    homepage = "https://github.com/regolith-linux/regolith-rofication";
    license = pkgs.lib.licenses.gpl3Plus;
  };
}