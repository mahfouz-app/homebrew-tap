cask "mahfouz" do
  version "0.7.0"
  sha256 "444b30291289a10d08a803bcce78a78fd574a6d6688e4876eac063a65170340e"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.7.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://github.com/mahfouz-app/app"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end