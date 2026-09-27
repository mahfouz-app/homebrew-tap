cask "mahfouz" do
  version "0.8.0"
  sha256 "ca6f76b9289635433b3b42cd666b95d8a60f823ba65292fcd644bc813e866f68"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.8.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://github.com/mahfouz-app/app"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end