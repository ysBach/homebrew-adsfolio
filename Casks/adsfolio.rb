cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.4"
  sha256 arm: "74d8da5ae2542761fc746615d5634f4d78aae26b57c9daae4ea16e0a8c4fde12",
         intel: "5e5d028ad14a76a0c6f0203f78709258cd9cdee62926b26e14eb484bffbedea6"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
