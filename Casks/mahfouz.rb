cask "mahfouz" do
  version "0.29.1"
  sha256 "7305c4a97f2459a306695a09d31c7ebc9dad17a17972418fa4c1be076aca5134"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.29.1/Mahfouz_#{version}_aarch64.dmg"
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