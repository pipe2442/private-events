require 'rails_helper'
# require 'spec_helper'
# require 'capybara/rspec'

RSpec.describe Event, type: :model do
  context 'Association' do
    it { should belong_to(:creator).class_name('User') }
    it { should have_many(:attendances) }
    it { should have_many(:attendees) }
  end
  context 'validation tests' do
    it "Shouldn't save if there's no date" do
      e = Event.new(creator_id: 1, description: 'Event 1')
      expect(e.save).to eq(false)
    end

    it "Shouldn't save if not creator specified" do
      text = "This event doesn't contain creator id, it's not correct"
      e = Event.new(date: '2021-03-20', description: text)
      expect(e.save).to eq(false)
    end

    it "Shouldn't save if the creator_id is incorrect" do
      text = "This event contains bad creator id, it's not correct"
      e = Event.new(creator_id: "xyz", date: '2020-07-20', description: text)
      expect(e.save).to_not eq(true)
    end
  end
end
