cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.2"
  sha256 arm: "b8d85e4265161caf1b2ed63bdf13996c40d1960763e37786c0535c0ba831182f",
         intel: "02a7c51707d781314eac25e63e25611dc8b9a2318202661f5952ee85f2727c45"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
