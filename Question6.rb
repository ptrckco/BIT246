# Consider the following Ruby Arrays
contact_person =  ["Brown","Smith"]
contact_email =  ["brown@email.com","smith@email.com"]
contact_address = ["55 Main st.",  "44 High Dr."]
contact_phone = ["03-8765-4567" ,  "03-9876-3454"]

# contact_Hash is Ruby Hash of Hash
contact_Hash = Hash.new
contact_Hash = [contact_person,contact_email,contact_address,contact_phone]

puts contact_Hash.inspect
# Copy the arrays content into contact_Hash such that contact_Hash contains contact details of each person as a hash.
# Expected output:
# {"Brown"=>{:email=>"brown@email.com", :address=>"55 Main st.",:phone=>"8765-4567"},
# {"Smith"=>{:email=>"smith@email.com", :address=>"44 High Dr.", :phone=>"9876-3454"}  }
