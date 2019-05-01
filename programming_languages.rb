def reformat_languages(languages)
require 'pry'

new_hash = {}

languages.each do |key_top, lang_data|
  lang_data.each do |key_lang, type_data|
    if new_hash.keys.include?(key_lang) == false
       new_hash[key_lang] = {type: type_data[:type], style: [key_top]}
    else 
        new_hash[key_lang][:style] << key_top
    end 
   end 
end

return new_hash

end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    