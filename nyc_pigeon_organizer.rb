require 'Pry'

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do | cgl_key, cgl_hash |
    cgl_hash.each do |detail_key, names_array|
      names_array.each do |name|

        if new_hash.has_key?(name)
          new_hash[name][cgl_key] << detail_key.to_s
        else
          new_hash[name] = {:color => [], :gender => [], :lives => []}
          new_hash[name][cgl_key] << detail_key.to_s
        end
        
      end
    end
  end

  new_hash
end
