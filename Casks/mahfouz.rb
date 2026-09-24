cask "mahfouz" do
  version "0.4.0"
  sha256 "84d2d6fb3648b4fcd04e574b0cc0ebdeda03f5856e5a29542c93c9f98b50ecf3"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.4.0/Mahfouz_#{version}_aarch64.dmg"
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