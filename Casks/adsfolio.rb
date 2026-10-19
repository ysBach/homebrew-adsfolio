cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm: "924f24ba7f4f70036f9b9cb0153155e22adc14eb33f902e216629322183ea8a7",
         intel: "e7e54e4d37c66aa85e1ace7c0fbd0bb5c68f897545b2e9f35fa2f42f17358a34"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
