cask "mahfouz" do
  version "0.29.0"
  sha256 "0977c68d4d867f35463e6652b4f52bd713f3585cf37667983967c34dad4efa49"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.29.0/Mahfouz_#{version}_aarch64.dmg"
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