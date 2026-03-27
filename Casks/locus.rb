cask "locus" do
  version "0.1.5"
  sha256 "0432468dc7c1dce73e30cc2fae6bc8aecc942e68848c461ff78c6e4c73bb531d"

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
