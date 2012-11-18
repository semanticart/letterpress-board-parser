class BoardParser
  def initialize(file)
    @file = file

    raise Errno::ENOENT unless File.exist?(@file)
  end

  def tiles
    @tiles ||= recognize_tiles
  end

  private

  def recognize_tiles
    remove_header
    make_tiles

    0.upto(24).map do |number|
      recognize_tile(number)
    end
  end

  def recognize_tile(number)
    `tesseract -psm 10 /tmp/tile_#{"%02d" % number}.png /tmp/output`

    File.read('/tmp/output.txt').strip
  end

  def remove_header
    `convert #{@file} -gravity North -chop 0x320 /tmp/headless.png`
  end

  def make_tiles
    `convert /tmp/headless.png -crop 128x128 /tmp/tile_%02d.png`
  end
end
