cask "mahfouz" do
  version "0.26.0"
  sha256 "b375cdc5d30128a4da3af9c969310f9264c1977140d826cb52d41b686ba12297"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.26.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://mahfouz.app"

  depends_on macos: :monterey
  depends_on arch: :arm64

  # The app updates itself in place (tauri-plugin-updater), so
  # brew upgrade leaves it alone unless run with --greedy.
  auto_updates true

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end