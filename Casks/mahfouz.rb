cask "mahfouz" do
  version "0.18.0"
  sha256 "47219b3e23b94c54d1627e14c2aa9d8cd275e46fc6ff7fc1c9aef15fc8a03bc2"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.18.0/Mahfouz_#{version}_aarch64.dmg"
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