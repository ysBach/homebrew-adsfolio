cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm: "f5d4b637143bb5991e39f0b60c86bd6c291fcfb9f3c06d88d2fd189d04b5ba59",
         intel: "8b3fd0de108da53777a06a5a03833ae6259e1f07cbcc9e7c1b7e6e1d0b08bc37"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
