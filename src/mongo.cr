require "mongo"

client = Mongo::Client.new("mongodb://mavirolero@gmail.com: Bqnsepc2358,@http://localhost:3000/teste")
db = client.database("teste")
collection = db.collection("user")

doc = { "name" => "James Bond", "age" => 37 }
collection.insert_one(doc)

cursor = collection.find("age" => { "$gt" => 30 })
cursor.each do |document|
  puts typeof(document)  # => BSON::Document
  puts document
end
