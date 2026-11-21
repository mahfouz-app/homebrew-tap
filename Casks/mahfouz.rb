cask "mahfouz" do
  version "0.27.0"
  sha256 "2164a5acd2fcf00b07c43050bb88a08b9d4d9b216a57a50bebbbd9845e0d7d57"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.27.0/Mahfouz_#{version}_aarch64.dmg"
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