cask "mahfouz" do
  version "0.13.0"
  sha256 "7d460a34ed208bb5d32470caa1801c245b6f92f21e76868545ffd45905fbd929"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.13.0/Mahfouz_#{version}_aarch64.dmg"
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