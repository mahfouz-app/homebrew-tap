cask "mahfouz" do
  version "0.25.1"
  sha256 "aa07a2df680f0199a2d59f9b812976b65217f36d844efdf85d3a1d3c7ef4bcb2"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.25.1/Mahfouz_#{version}_aarch64.dmg"
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