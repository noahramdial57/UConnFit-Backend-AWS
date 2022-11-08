let pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "webdev";
  
  buildInputs = with pkgs; [
    nodePackages.serverless
    glow
    nodejs-16_x 
    (yarn.override { nodejs = nodejs-16_x; })

      (python39.withPackages (pp:
        with pp; [
          beautifulsoup4
        ]))
  ];
}    

