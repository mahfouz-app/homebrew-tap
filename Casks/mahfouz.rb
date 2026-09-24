cask "mahfouz" do
  version "0.5.0"
  sha256 "8a6736ce6099e371493807976fd81889217d6383db59b1115e7016c4a4025e2f"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.5.0/Mahfouz_#{version}_aarch64.dmg"
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