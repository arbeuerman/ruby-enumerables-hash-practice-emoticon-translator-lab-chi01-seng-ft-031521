# require modules here
require "yaml" 

def load_library
  # code goes here
  emoji_data = YAML.load_file("libemoticons.yml")
  puts emoji_data
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library