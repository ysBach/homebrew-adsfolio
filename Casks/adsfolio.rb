cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm: "f690c7f6b7bd6c9f36f2472c746e49cfce75a69d89430f07011a0a44fd6fea22",
         intel: "a176e60663430847e39c112c9dddc38a5800be196f609e3321fbbf60f2fbc7b2"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: ">= :sequoia"

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
