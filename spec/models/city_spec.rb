require 'rails_helper'

describe "#first_name" do
	it { expect(FactoryBot.create(:city)).to have_many(:users) }
end