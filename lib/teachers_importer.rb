# require_relative './app_config.rb'

class TeachersImporter

  # require_relative './spec_config.rb'
  def import
    Teacher.create(name:'Shahad', email: 'shahad@gamil.com', adress: '46 spadania ave', phone:' 934-323-234')
    Teacher.create(name:'Bob', email: 'Bob@gamil.com', adress: '46 spadania ave', phone: '924-343-894')
    Teacher.create(name:'Mike', email: 'mike@gamil.com', adress: '46 spadania ave', phone: '934-323-234')
    Teacher.create(name:'Ginger', email: 'Ginger@gamil.com', adress: '46 spadania ave', phone: '934-323-234')
    Teacher.create(name:'Armen', email: 'Armen@gamil.com', adress: '46 spadania ave', phone: '934-323-234')
    Teacher.create(name:'Jonathon', email: 'jonathon@gamil.com', adress: '46 spadania ave', phone: '934-323-234')
    Teacher.create(name:'Leo', email: 'leo@gamil.com', adress: '46 spadania ave', phone: '934-323-234')
    Teacher.create(name:'Shaun', email: 'shaun@gamil.com', adress: '46 spadania ave', phone: '934-323-234')
    Teacher.create(name:'Sandra', email: 'sandra@gamil.com', adress: '46 spadania ave', phone: '934-323-234')
  end

end
