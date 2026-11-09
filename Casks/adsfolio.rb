cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.0"
  sha256 arm: "52e3a84f5d694f820f6a7e3f9dd50b6701b86818f8be3b7afce5fd390db7cd6e",
         intel: "8e8121def2e428f1b1a56df6f4b2705be7c8dc782a28e657b6db6f07e5b6778a"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
