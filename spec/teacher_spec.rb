require_relative 'spec_helper'

describe Teacher do
  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:teachers)
  end

  context '#name and #email' do
    before(:each) do
      @teacher = Teacher.new
      @teacher.assign_attributes(
        name: 'Happy',
        email: 'Gilmore@gmail.com',
        adress: '46 spadania ave',
        phone: '534-345-453'
      )
    end

    it 'should have name and email methods' do
      [:name, :email].each { |method| expect(@teacher).to respond_to(method) }
    end

  end

  context 'validations' do
    before(:each) do
      @teacher1 = Teacher.new
      @teacher1.assign_attributes(
        name: 'Kreay',
        email: 'Shawn@gmail.com',
        adress: '46 spdania ave',
        phone: '(510) 555-1212 x4567'
      )
      @teacher1.save
    end

    it 'should accept a unique info' do
      @teacher2 = Teacher.new
      @teacher2.assign_attributes(
        name: 'Kreay',
        email: 'Shawn@gmail.com',
        adress: '46 spdania ave',
        phone: '(510) 555-1212 x4567'
      )
      @teacher2.save
      expect(@teacher2).to_not be_valid
    end
  end
end
