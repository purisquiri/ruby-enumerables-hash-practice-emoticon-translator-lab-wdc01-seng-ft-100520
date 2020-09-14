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
  update_hash = load_library(file_path)
  binding.pry
  update_hash.each do |emoticon|
    if update_hash.values[0].values[1] == emoticon
      puts update_hash.values[0].values[0]
    else
      puts "Sorry I don't know this #{emoticon}"
    end
  end  
end

def get_english_meaning
  # code goes here
end
#binding.pry