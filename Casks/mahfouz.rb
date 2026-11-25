cask "mahfouz" do
  version "0.30.0"
  sha256 "cd4641d59e05f5f25a06411620a7bc4e116b07b2a3a4b3754165b4ac73d3cf75"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.30.0/Mahfouz_#{version}_aarch64.dmg"
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