cask "adsfolio" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.0"
  sha256 arm: "fc79e730ff92bd7958699ce194860703f70d0f40f5d17fc8ad0134cdbb705fcf",
         intel: "06d61014bb9f9fe2f6f3210b1ef260dd5db19695ceaaac0a78e2a8e44bf5dfde"

  url "https://github.com/ysBach/adsfolio/releases/download/v#{version}/adsfolio-macos-#{arch}.zip"
  name "ADSfolio"
  desc "Research PDF library with ADS, DOI metadata, and local references"
  homepage "https://github.com/ysBach/adsfolio"

  depends_on macos: :sequoia

  app "ADSfolio.app"
  binary "#{appdir}/ADSfolio.app/Contents/MacOS/adsfolio-cli", target: "adsfolio"

  uninstall quit: "io.github.ysbach.adsfolio"
end
