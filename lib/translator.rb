# require modules here
require "pry"
require "yaml"



def load_library(file_path)
  upload_emoticons = YAML.load_file(file_path)
  final_hash = {} 
  upload_emoticons.each do |word, emoticons_array|
    final_hash[word] = {}
    final_hash[word][:english] = emoticons_array[0]
    final_hash[word][:japanese] = emoticons_array[1]
    end
  final_hash
 end
 
def get_english_meaning(file_path, emoticon)
  load_library(file_path).each do |key, emoticon_obj|
    if emoticon_obj[:japanese] == emoticon
      return emoticon_obj[:english]
    #binding.pry
    else
      return "Sorry, that emoticon was not found"  
    end
  end
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  updated_hash.values.each do |emoticon_obj|
    binding.pry
    if emoticon_obj[:english] == emoticon
      return emoticon_obj[:japanese]
    #binding.pry
    else
      return "Sorry, that emoticon was not found"  
    end
  end
end
