cask "mahfouz" do
  version "0.23.1"
  sha256 "e648191fc34be988877a168c6be94deff2cde10ba677e204a8ec63cce30f208d"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.23.1/Mahfouz_#{version}_aarch64.dmg"
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