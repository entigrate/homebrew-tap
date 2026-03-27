cask "locus" do
  version "0.1.6"
  sha256 "0f3ad4c1ae4c331a83207007ce77211e9ffe0467b941affc469516935150518a"

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
