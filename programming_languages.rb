def reformat_languages(languages)
require 'pry'

=begin 
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
1.) create skeleton of the hash by iterating across all keys in oo and functional key hashes 
2.) add each key from oo in to a new hash as keys IF and ONLY IF it's not already in there 
3.) once that's complete, check if skeleton is accurate (manually)
4.) next, use the language_name hash as a key to an empty hash sub-hash
5.) next, iterate through and add a :type and :style key within that new sub-hash 
6.) next, iterate through and point both :type and :style to empty hashes
7.) next, iterate through and set "type" equal to proper value(s) from original hash  
8.) net, iterate through and set "style" equal to proper value(s) from original hash
=end 

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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    