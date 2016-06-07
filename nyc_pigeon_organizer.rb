require 'Pry'

# New Code

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(attribute, details_hash), result|
    details_hash.each do |detail, names|
      names.each do |name|
        #binding.pry
        result[name] ||= {}
        result[name][attribute] ||= []
        result[name][attribute] << detail.to_s
      end
    end
  end
end



# Original Code

# def nyc_pigeon_organizer(data)
#   new_hash = {}

#   data.each do | attribute, details |
#     details.each do |detail, names|
#       names.each do |name|

#         if new_hash.has_key?(name)
#           new_hash[name][attribute] << detail.to_s
#         else
#           new_hash[name] = {:color => [], :gender => [], :lives => []}
#           new_hash[name][attribute] << detail.to_s
#         end
#       end
#     end
#   end

#   new_hash
# end
