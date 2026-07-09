class Markpane < Formula
  desc "Markpane CLI: smart views, frontmatter queries, and Agent Briefs from the terminal"
  homepage "https://markpane.com"
  url "https://markpane.com/downloads/markpane-cli-0.3.1.zip"
  sha256 "b1b8f3007c8e9a24af14887fc736aa23d6d1d1b1de56d293b7d016c273b0bbfd"
  version "0.3.1"
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
    assert_match "0.1.0", shell_output("#{bin}/markpane --version")
  end
end
