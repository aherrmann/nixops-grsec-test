{
  network.description = "GRSec Test";

  vboxGuest =
    { config, pkgs, ... }:
    {
      # Hardening
      security.grsecurity = {
        enable = true;
        testing = true;
        config = {
          system = "server";
          virtualisationConfig = "guest";
          hardwareVirtualisation = true;
          virtualisationSoftware = "virtualbox";
          priority = "security";
        };
      };

      # Deployment
      deployment.targetEnv = "virtualbox";
      deployment.virtualbox.memorySize = 1024;  # megabytes
    };
}
