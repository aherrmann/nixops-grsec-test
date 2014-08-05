# GRSecurity Test Machine

Create and deploy the machine with these commands:

    nixops create machine.nix -Inixpkgs=${NIXPKGS_GRSEC} -d grsec
    nixops deploy -d grsec

Where `${NIXPKGS_GRSEC}` points to a check-out of nixpkgs that contains a
matching Kernel, and GRSecurity patches.
