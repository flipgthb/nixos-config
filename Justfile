# just is a command runner. Run `just` to list available commands.

host := `hostname`

# Deploy current configuration
deploy:
  nixos-rebuild switch --flake .#{{host}} --sudo

# Deploy with full trace output (for debugging)
debug:
  nixos-rebuild switch --flake .#{{host}} --use-remote-sudo --show-trace --verbose

# Update all flake inputs
up:
  nix flake update

# Update a specific flake input: just upp home-manager
upp input:
  nix flake update {{input}}

# Dry-run: show what would change without applying
dry:
  nixos-rebuild dry-activate --flake .#{{host}} --sudo

# Show system profile history
history:
  nix profile history --profile /nix/var/nix/profiles/system

# Open a nixpkgs REPL
repl:
  nix repl -f flake:nixpkgs

# Remove system generations older than 7 days
clean:
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system --older-than 7d

# Garbage collect unused nix store entries
gc:
  sudo nix-collect-garbage --delete-old

# Check flake for errors without building
check:
  nix flake check
