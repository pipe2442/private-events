require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'Should be valid if the attributes are' do
      expect(User.new(name: 'Plic', email: 'paci@gmail.com')).to be_valid
    end

    it "Shouldn't save if the name is less than 4 characters" do
      u = User.new(name: 'Pli', email: 'plic@gmail.com')
      expect(u.save).to eq(false)
    end

    it 'Should save if everything validates' do
      u = User.new(name: 'paci', email: 'pac@gmail.com')
      expect(u.save).to eq(true)
    end
  end

  context 'Association tests' do
    it { should have_many(:events) }
    it { should have_many(:attended_events) }
  end
end
