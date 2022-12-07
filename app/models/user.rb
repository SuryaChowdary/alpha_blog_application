class User < ApplicationRecord
  validates :username , presence: true ,
                        uniqueness: {case_sensitive: false},  
                        length: {minimum: 3 , maximum: 30}

   EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i                    
  validates :email , presence: true , 
                    uniqueness: {case_sensitive: false},
                    length: {maximum: 100},
                    format: {with: EMAIL_REGEX}
end