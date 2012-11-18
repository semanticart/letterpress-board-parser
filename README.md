# Letterpress Board Parser

A simple board parser for Letterpress that leans heavily on tesseract and imagemagick.

## Dependencies

Install tesseract and imagemagick. If you're using homebrew, that's as simple as `brew install imagemagick tesseract`

## An example of running the code

Clone the project and cd into the directory. Run the following command, substituting light.png for the path to a screenshot of your board.

    ruby -r ./board_parser -e "puts BoardParser.new('light.png').tiles.join"
    KTVHROBDRBDLCYTPLEWAFZYMB

## Note

Right now this just supports iPhone 4 resolution screenshots. It would be easy to update if someone wants to add an iPhone 5-res screenshot to an issue.

## License

This is released under the [MIT License](http://www.opensource.org/licenses/MIT).
