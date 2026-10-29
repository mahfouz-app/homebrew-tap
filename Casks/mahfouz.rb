cask "mahfouz" do
  version "0.20.0"
  sha256 "48c9c38f17733b99a58f0a657b481dc9319caa801e2ce66c26889713d560921f"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.20.0/Mahfouz_#{version}_aarch64.dmg"
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