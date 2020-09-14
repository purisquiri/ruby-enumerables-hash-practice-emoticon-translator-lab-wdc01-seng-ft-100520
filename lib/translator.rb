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
  update_new_emoticons = load_library(file_path)
  binding.pry 
  # update_new_emoticons.each do |word, emoticons_hash|
  #   if update_new_emoticons[word][emoticons_hash][1] == emoticon
  #     puts update_new_emoticons[word][emoticons_hash][0]
  #   else puts "Sorry, I don't know this #{emoticon}"
  #   end
  # end
    
end

def get_english_meaning
  # code goes here
end
#binding.pry