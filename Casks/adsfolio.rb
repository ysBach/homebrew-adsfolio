cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.3"
  sha256 arm: "4528d6c1918b9b409b140589353a94530f9ae47253c8379e30a34f8c0f0cf27d",
         intel: "6cd66f75b6929e4d8ecc89504d1a6bddf0bb3f489918c2d836239790866a2cc2"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
