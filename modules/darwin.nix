{ self, config, ... }:
{
  # Set Git commit hash for darwin-version.
  system.configurationRevision = self.rev or self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  users.users.${config.my.username}.home = "/Users/${config.my.username}";
  security.pam.services.sudo_local.touchIdAuth = true;
}
