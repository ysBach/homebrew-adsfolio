cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.1"
  sha256 arm: "58869ee95fb06afdf0491dfef11ad7babc47203fad12323eee6d86676f6f19ff",
         intel: "9db4c5eb71dd32cf15881a8b5fdae246c320defbf89146f1f63c5979245d1882"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
