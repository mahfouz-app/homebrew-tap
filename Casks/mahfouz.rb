cask "mahfouz" do
  version "0.11.0"
  sha256 "d96d8bbb359a7e7f7666a3c27de325255f8e78748466660e773d5f2e18842868"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.11.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://docs.mahfouz.app"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end