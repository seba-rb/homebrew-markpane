class Markpane < Formula
  desc "Markpane CLI: smart views, frontmatter queries, and Agent Briefs from the terminal"
  homepage "https://markpane.com"
  url "https://markpane.com/downloads/markpane-cli-0.14.0.zip"
  sha256 "b9010990cfbc6c8ea4103975b645d92067cbbdc8ccb9d3f8a119bd3d4ef0a4d5"
  version "0.14.0"
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
    assert_match version.to_s, shell_output("#{bin}/markpane --version")
    assert_match "--exclude-folder", shell_output("#{bin}/markpane view update --help")
  end
end
