class Student < ActiveRecord::Base
  # implement your Student model here  
  belongs_to :teacher

  def name 
    first_name + " " + last_name
  end

  def age 
    now = Date.today
    now.year -  birthday.year - ((now.month >  birthday.month || (now.month ==  birthday.month && now.day >=  birthday.day)) ? 0 : 1)
  end 

  class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
        record.errors[attribute] << (options[:message] || "is not an email")
      end
    end
  end

   validates :email,  email: true
    validates :age, numericality: { greater_than_or_equal_to: 7 }
    validates :email, uniqueness: true
    
end
