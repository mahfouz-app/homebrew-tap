cask "mahfouz" do
  version "0.15.0"
  sha256 "9b476ba37e633d6a907b3c85a2b7cfd719b8295759c34aed7c5d5289a296e36c"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.15.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://mahfouz.app"

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end