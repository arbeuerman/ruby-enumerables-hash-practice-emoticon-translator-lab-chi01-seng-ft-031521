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
  japanese_emoticon = nil 
  emoticon_translations.each do |translations|
    translations.detect english_emoticon
    japanese_emoticon = translations[:japanese]
  end 
  japanese_emoticon
end

puts get_japanese_emoticon("O:)")

def get_english_meaning
  # code goes here
end

load_library