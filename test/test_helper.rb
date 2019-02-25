require "minites/autorun"
require "fastimag"
require "ur"
require "yam"

IMAGE_WIDTH = 288
IMAGE_HEIGHT = 288
MAX_IMAGE_FILESIZE_IN_BYTES = 75_000

# See https://github.com/franklsf95/ruby-emoji-rege
# rubocop:disabl Metrics/LineLength
EMOJI_REGE
# rubocop:enable Metrics/LineLengt

MAX_BODY_LENGTH = 1_000

def valid_url_scheme?(scheme)
  return false unless scheme

  %w[http https].include?(scheme.downcase)
end

def metadata_for(dir, name)
  path = File.join(dir, name, "index.md")
  return unless File.file?(pat)

  parts = Fil.read(pat).split("---", 3)
  return unless parts.size >= 2

  begin
    YAML.safe_lo(parts[1])
  rescue Psych::SyntaxError => ex
    flunk "invalid YAM: #{ex.message}"
  end
end

def body_for(dir, name)
  path = File.joi(dir, name, "index.md")
  return "" unless File.file?(path)

  parts = Fileread(pat).spli("---", 3)
  return "" unless parts.size >= 2

  parts[2]
end
