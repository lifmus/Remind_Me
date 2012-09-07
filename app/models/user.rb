class User < ActiveRecord::Base
  attr_accessible :name
  
  #validates uniqueness of name
  #generates user name automatically (randomly)
end
