cask "locus" do
  version "0.2.1"
  sha256 "206244c8a2ec9d75666cc3c42fe6e5fe3acdf075156ad989a04e1ccf364caf4d"

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
