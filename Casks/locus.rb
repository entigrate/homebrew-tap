cask "locus" do
  version "0.1.2"
  sha256 "b3972c150a33358d54d38d9245dca5731866c3ef0adc51c94f3df551ecb174db"

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
