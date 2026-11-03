cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.0"
  sha256 arm: "bddb7b8220d88aa60ee6ef18dd5e07caa2afdaa5806e44c0d721eb06c6c11ee1",
         intel: "291b05d77ee4dd12a4eb3b961d9d7702f0d7359e6327e0daaa6ba26dba61bf61"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
