cask "mahfouz" do
  version "0.24.0"
  sha256 "fd249455372c75fc6bf1fcd650a0495a4d3744793be7a10e7c5517f0c8ceb355"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.24.0/Mahfouz_#{version}_aarch64.dmg"
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