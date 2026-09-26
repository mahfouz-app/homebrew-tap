cask "mahfouz" do
  version "0.6.0"
  sha256 "923741b41f393f79e0f0662af8fd49de823bfa188adbd7f1f5072b8ca270ffe1"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.6.0/Mahfouz_#{version}_aarch64.dmg"
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