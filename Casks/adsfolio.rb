cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.0"
  sha256 arm: "2ad6519dd71dab5fdfeba827fa4c1c536ea08aab73b44a8700753e6574a40b21",
         intel: "706bee16155e5943a6850d7a079877c47e0d1c3df516a15f503146065b9b96b3"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
