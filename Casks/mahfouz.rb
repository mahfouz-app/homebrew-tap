cask "mahfouz" do
  version "0.17.0"
  sha256 "96d25bd7affa454254d503ed228ee1a28d6918e34b0b6b31f4b9d1d9b22e2266"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.17.0/Mahfouz_#{version}_aarch64.dmg"
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