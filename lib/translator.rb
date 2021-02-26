# require modules here
require "yaml" 
require 'pry'

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
  emoticon_translations
end

def get_japanese_emoticon(english_emoticon)
  # code goes here
  emoticon_translations = load_library
  #binding.pry 
  japanese_emoticon = nil 
  if emoticon_translations.detect english_emoticon
    #binding.pry 
    puts english_emoticon
  end 
  #emoticon_translations.each do |meaning, translations|
   # if translations.detect english_emoticon
    #  japanese_emoticon = translations[:japanese]
    #end 
  #end 
  puts japanese_emoticon
end

puts get_japanese_emoticon("O:)")

def get_english_meaning
  # code goes here
end

load_library