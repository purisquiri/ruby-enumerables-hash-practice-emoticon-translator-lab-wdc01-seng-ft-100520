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
  

def get_japanese_emoticon(file_path, emoticon)
  updated_hash = load_library(file_path)
  
  updated_hash.each do |emoticon|
    binding.pry
    if updated_hash.values[0].values[1] == emoticon
      
      return updated_hash.values[0].values[0]
    else
      return "Sorry, that emoticon was not found"  
    end
  end
end

def get_english_meaning
  # code goes here
end
#binding.pry