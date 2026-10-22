cask "mahfouz" do
  version "0.14.0"
  sha256 "21449af114c072a5707218e98bd4aab3f678865be7217da6bdf400dfef6cd1f9"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.14.0/Mahfouz_#{version}_aarch64.dmg"
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