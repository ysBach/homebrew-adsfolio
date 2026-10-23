cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.3"
  sha256 arm: "2d5e73e7cc4630c3c945bad3cb2ca4b485e948b783c6d2d13874eabdac460426",
         intel: "c36705e4d88c60d052446afb2034bce25c0fc7a96efb30ee57ee33de13ad9743"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
