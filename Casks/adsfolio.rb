cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 arm: "4ce7092c0e3d3024084d9a3b086a75b0de2650f13302f61cb7b0455069eb1f73",
         intel: "6dc29b13bd9851e39829a4d231ccf51d51250090b3a7e8f84796a1f7d0fa6361"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
