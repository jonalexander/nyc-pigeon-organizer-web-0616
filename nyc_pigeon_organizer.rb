require 'Pry'

# Lecture 06.08.16

# Steps
  # new data structure to fill in
    # each name is a key of the hash
    # each value is a hash

  # Breakdown How to Create....
  # {"theo" => {}, "Peter Jr." => {}}

  # 1. give me a list of uniqe names
    # *combine :gender
  # 2. assign these names as the key to a hash,
  # 3. assign each values as being a hash

def nyc_pigeon_organizer(data)

### create new data structure to fill in
  # create list of names
  names = data[:gender][:male] + data[:gender][:female]
  # names = ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky", "Queenie", "Ms. K"]

  initial_structure = names.each_with_object({}) do |name, initial_structure|
  # construct for me another hash where the keys are the attributes and the values are an array
    attributes = data.keys
    attributes_hash = attributes.each_with_object({}) do |attribute, attributes_hash|
      attributes_hash[attribute] = []
    end 

    initial_structure[name] = attributes_hash
  end
  #binding.pry

  ### fill in data structure
  # starting with initial_structure
    # fill in the color - REDUCE the problem
      # go through the list of colors - doing it WITHOUT code 
        # for each color, go through each pigeon - 
          # for each pigeon, add the respective color

  #strip through nesting
  data.keys.each_with_object(initial_structure) do |attribute, working_hash|
    #data.keys => [:color, :gender, :lives]
    #for each attribute, give me the respective hash
    data[attribute].each do |trait, names|
      #names = ["Theo", "Peter Jr.", "Lucky"]
      names.each do |name|
        working_hash[name][attribute] << trait.to_s
      end
    end
  end #data.keys.each_with_object
  #binding.pry

end

pigeon_data = {
  :color => { 
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }


# =========  

# New Code 06.07.16

# def nyc_pigeon_organizer(data)
#   data.each_with_object({}) do |(attribute, details_hash), result|
#     details_hash.each do |detail, names|
#       names.each do |name|
#         #binding.pry
#         result[name] ||= {}
#         result[name][attribute] ||= []
#         result[name][attribute] << detail.to_s
#       end
#     end
#   end
# end


# Code 


# Original Data Structure

# pigeon_data = {
#   :color => { 
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# Desired Data Structure

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }


# =====

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






