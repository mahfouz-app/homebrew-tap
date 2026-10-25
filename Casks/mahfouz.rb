cask "mahfouz" do
  version "0.16.0"
  sha256 "7ed0f5c201688b2df582871a4a80b2e91e3c4278a51d9ce7f10e843d0dc172f0"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.16.0/Mahfouz_#{version}_aarch64.dmg"
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