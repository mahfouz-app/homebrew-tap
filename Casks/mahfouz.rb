cask "mahfouz" do
  version "0.28.0"
  sha256 "5c910be70f9cb63b74bced4a8e0b1e93f26743ea5cc5ab0dbc8d9854ad19c45c"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.28.0/Mahfouz_#{version}_aarch64.dmg"
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