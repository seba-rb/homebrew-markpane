class Markpane < Formula
  desc "Markpane CLI: smart views, frontmatter queries, and Agent Briefs from the terminal"
  homepage "https://markpane.com"
  url "https://markpane.com/downloads/markpane-cli-0.12.0.zip"
  sha256 "76105750c19d3afea7ae7049f133af24a242d83bda91c539ecf3e765f384faba"
  version "0.12.0"
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
  end
end
