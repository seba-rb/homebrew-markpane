class Markpane < Formula
  desc "Markpane CLI: smart views, frontmatter queries, and Agent Briefs from the terminal"
  homepage "https://markpane.com"
  url "https://markpane.com/downloads/markpane-cli-0.1.0.zip"
  sha256 "REPLACE_WITH_SHA256_AFTER_NOTARIZED_ZIP"
  version "0.1.0"
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
