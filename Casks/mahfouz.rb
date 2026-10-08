cask "mahfouz" do
  version "0.10.0"
  sha256 "d898d4aa50ccdcc7e1203a81ddd2b238a2ef26174a3aacdf93fa54c9c884b71a"

  url "https://github.com/mahfouz-app/homebrew-tap/releases/download/mahfouz-v0.10.0/Mahfouz_#{version}_aarch64.dmg"
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