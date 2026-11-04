cask "mahfouz" do
  version "0.22.0"
  sha256 "44200e7848902f3c65f4f14df70cf1576882c56f5c4682c5b827c528acff619a"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.22.0/Mahfouz_#{version}_aarch64.dmg"
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