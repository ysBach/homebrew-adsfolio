cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.0"
  sha256 arm: "f4c5b1da9878e6144273a955a75a585973b6d22eacb96860a95dc9cb1059ea47",
         intel: "5645947a315c122586b8e40dbcb253083bcb4f5404207db5bc4230ddb4dc24fe"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
