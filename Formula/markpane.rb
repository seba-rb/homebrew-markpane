class Markpane < Formula
  desc "Markpane CLI: smart views, frontmatter queries, and Agent Briefs from the terminal"
  homepage "https://markpane.com"
  url "https://markpane.com/downloads/markpane-cli-0.9.0.zip"
  sha256 "6827925a0bdb5dfaeea8cd991623e77d6e10e5750008390644124bc6a0a8cf1a"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    depends_on macos: :sonoma
  end

  def install
    bin.install "markpane"
  end

  def caveats
    <<~EOS
      markpane reads the workspaces you registered in the Markpane app.
      Launch Markpane and add a workspace before using the CLI:
        https://markpane.com
    EOS
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/markpane --version")
  end
end
