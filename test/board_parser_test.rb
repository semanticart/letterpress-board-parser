require 'minitest/autorun'
require_relative '../board_parser'

describe BoardParser do
  TEST_TILES = %W{ K T V H R O B D R B D L C Y T P L E W A F Z Y M B }
  THEMES = %W{ dark forest glow light pink pop retro }

  describe 'parsing boards' do
    THEMES.each do |theme|
      it "can parse #{theme} files" do
        theme_image = File.join(File.dirname(__FILE__), "/support/#{theme}.png")

        board = BoardParser.new(theme_image)

        board.tiles.must_equal TEST_TILES
      end
    end
  end
end
