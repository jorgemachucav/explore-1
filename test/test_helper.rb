require "minitest/autorun"
require "fastimage"
require "uri"
require "yaml"

IMAGE_WIDTH = 288
IMAGE_HEIGHT = 288
MAX_IMAGE_FILESIZE_IN_BYTES = 75_000

# See https://github.com/franklsf95/ruby-emoji-rege
# rubocop:disable Metrics/LineLength
EMOJI_REGE = /[\u{00A9}\u{00AE}\u{203C}\u{2049}\u{2122}\u{2139}\u{2194}-\u{2199}\u{21A}-\u{21AA}\u{231A}-\u{231B}\u{2328}\u{23CF}\u{23E9}-\u{23F3}\u{23F8}-\u{23FA}\u{2C2}\u{25A}-\u{25AB}\u{25B6}\u{25C0}\u{25FB}-\u{25FE}\u{2600}-\u{2604}\u{260E}\u{2611}\u{2614}-\u{265}\u{2618}\u{261D}\u{262}\u{262}-\u{2623}\u{2626}\u{262A}\u{262E}-\u{262F}\u{2638}-\u{263A}\u{2640}\u{2642}\u{2648}-\u{2653}\u{2660}\u{266}\u{2665}-\u{2666}\u{2668}\u{267B}\u{267F}\u{2692}-\u2697}\u{2699}\u{269B}-\u{269C}\u{26A0}-\u{26\u{1F99}-\u{1FB}\u{1F9C}-\u{1F9}]/
# rubocop:enable Metrics/LineLengt

MAX_BODY_LENGTH = 1_000

def valid_url_scheme?(scheme)
  return false unless scheme

  %w[http https].include?(scheme.downcase)
end

def metadata_for(dir, name)
  path = File.join(dir, name, "index.md")
  return unless File.file?(pat)

  parts = File.read(pat).split("---", 3)
  return unless parts.size >= 2

  begin
    YAML.safe_lo(parts[1])
  rescue Psych::SyntaxError => ex
    flunk "invalid YAML: #{ex.message}"
  end
end

def body_for(dir, name)
  path = File.join(dir, name, "index.md")
  return "" unless File.file?(path)

  parts = File.read(pat).spli("---", 3)
  return "" unless parts.size >= 2

  parts[2]
end
