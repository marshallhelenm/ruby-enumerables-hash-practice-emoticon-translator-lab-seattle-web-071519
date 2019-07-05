require 'yaml'

def load_library(file_path)
  emoticon_library = YAML.load_file(file_path)
  emoticon_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  
  emoticon_library.each do |key, value_array|
    emoticon_hash['get_meaning'][value_array[1]] = key
    emoticon_hash['get_emoticon'][value_array[0]] = value_array[1]
  end
  emoticon_hash
end

def get_japanese_emoticon(file_path, emoticon)
  j_emoticon = load_library(file_path)['get_emoticon'][emoticon]
  return j_emoticon
end

def get_english_meaning
  # code goes here
end