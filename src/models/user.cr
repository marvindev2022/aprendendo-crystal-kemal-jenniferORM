require "jennifer"
require "mongob"

class User < Jennifer::Base
  property name : String
  property email : String
  property password : String
end
