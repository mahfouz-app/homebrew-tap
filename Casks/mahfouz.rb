cask "mahfouz" do
  version "0.31.0"
  sha256 "874a6515315dffd5ee26b922e90570fabba3a5476ecb513629361a4ec95732f4"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.31.0/Mahfouz_#{version}_aarch64.dmg"
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