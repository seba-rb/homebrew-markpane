class Markpane < Formula
  desc "Markpane CLI: smart views, frontmatter queries, and Agent Briefs from the terminal"
  homepage "https://markpane.com"
  url "https://markpane.com/downloads/markpane-cli-0.15.0.zip"
  sha256 "0cba8ad6f8689171f0d88845a4df7b3f549370944eef6d3dfc6aa6c01c57a29f"
  version "0.15.0"
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
