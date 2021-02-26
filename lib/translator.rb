# require modules here
require "yaml" 

def load_library
  #load the data for the emoticons
  emoticon_data = YAML.load_file("lib/emoticons.yml")
  
  #create a hash to sort the emoticons by name and value in english/japanese 
  emoticon_translations = {}
  emoticon_data.collect do |meaning, translations|
    translations_hash = {
      english: translations[0],
      japanese: translations[1]
    }
    emoticon_translations[meaning] = translations_hash
  end 
  puts emoticon_translations
end

def get_japanese_emoticon(english_emoticon)
  # code goes here
  emoticon_translations = load_library
  emoticon_translations
end

def get_english_meaning
  # code goes here
end

load_library