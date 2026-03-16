class Gtab < Formula
  desc "Ghostty tab workspace manager — save and restore terminal window layouts"
  homepage "https://github.com/Franvy/gtab"
  url "https://github.com/Franvy/gtab/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "4872f906104743a391756f1115e1dccf410c3e34ad92d8dda9da860a1ff8c070"
  license "MIT"

  def install
    bin.install "gtab"
  end

  def caveats
    <<~EOS
      Workspaces are stored in ~/.config/gtab/ by default.
      Override with: export GTAB_DIR="/your/path"

      Requires Ghostty terminal: https://ghostty.org
    EOS
  end

  test do
    assert_match "gtab — Ghostty Tab Workspace Manager", shell_output("#{bin}/gtab --help")
  end
end
