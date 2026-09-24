cask "mahfouz" do
  version "0.4.0"
  sha256 "4e61d9f7bb6446e5f5b07a6fc86f2f0587f19adbe414cddcd88485b56be603a8"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.4.0/Mahfouz_#{version}_aarch64.dmg"
  name "Mahfouz"
  desc "Cross-platform Markdown PKM"
  homepage "https://github.com/mahfouz-app/app"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Mahfouz.app"

  zap trash: [
    "~/Library/Application Support/app.mahfouz",
    "~/Library/Preferences/app.mahfouz.plist",
  ]
end