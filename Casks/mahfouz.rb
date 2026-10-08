cask "mahfouz" do
  version "0.9.0"
  sha256 "c70647b3bdabf1b857aeb40c7653b14922abc27b77d943c3f426d5ead1bcb08f"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.9.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://mahfouz.app"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end