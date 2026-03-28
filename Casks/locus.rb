cask "locus" do
  version "0.2.0"
  sha256 "dcf25e7ff3bc6d1043b5bb1ad376848c8dcdb5d550db8fd2d39922f4c46dade6"

  url "https://github.com/entigrate/locus/releases/download/v#{version}/Locus-#{version}.dmg"
  name "Locus"
  desc "Capture the window under your cursor with one hotkey"
  homepage "https://locusapp.dev"

  depends_on macos: ">= :sonoma"

  app "Locus.app"

  zap trash: [
    "~/Library/Caches/com.locus.app",
    "~/Library/Preferences/com.locus.app.plist",
  ]
end
