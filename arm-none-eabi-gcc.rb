require 'formula'

class ArmNoneEabiGcc < Formula

  homepage 'https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads'
  version '12.3-2023.07'

  url 'https://developer.arm.com/-/media/Files/downloads/gnu/12.3.rel1/binrel/arm-gnu-toolchain-12.3.rel1-darwin-arm64-arm-none-eabi.tar.xz'
  sha256 '91b46a984743ac2323376dd0273ad587d56c74253315ede6fcc1cc8056b2aa85'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
