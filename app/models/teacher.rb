 class Teacher < ActiveRecord::Base
    validates :name, uniqueness: true
    validates :email, uniqueness: true 
    
    has_many :students
 end 