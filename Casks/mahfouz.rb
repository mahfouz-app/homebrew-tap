cask "mahfouz" do
  version "0.19.0"
  sha256 "1f5772f0a400716a195f67a83f7ffce76d860eb3b9a7d6cbb8f6d92791615c09"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.19.0/Mahfouz_#{version}_aarch64.dmg"
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