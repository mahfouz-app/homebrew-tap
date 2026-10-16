cask "mahfouz" do
  version "0.12.0"
  sha256 "6b4222c48d4185c8ec8ddb8fde1e4e8de896bb7269f86a09aeb911f780b09a5b"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.12.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://docs.mahfouz.app"

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end