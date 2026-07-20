class Markpane < Formula
  desc "Markpane CLI: smart views, frontmatter queries, and Agent Briefs from the terminal"
  homepage "https://markpane.com"
  url "https://markpane.com/downloads/markpane-cli-0.5.0.zip"
  sha256 "f1965c275b81226f08b8f40b1732d01812bbd51e3a2ea628f4b5cfafed9d3b6b"
  version "0.5.0"
  license :cannot_represent

  depends_on :macos
  depends_on macos: :sonoma

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
    assert_match "0.5.0", shell_output("#{bin}/markpane --version")
  end
end
