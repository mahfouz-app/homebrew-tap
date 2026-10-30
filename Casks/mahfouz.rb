cask "mahfouz" do
  version "0.21.0"
  sha256 "8760915801d6ade54338bd6dac30c7066dc98c316a7ef1890899bf19d656558e"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.21.0/Mahfouz_#{version}_aarch64.dmg"
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