require 'rails_helper'

RSpec.describe Shop, type: :model do
   it 'should persist a shop in the DB' do
    Shop.create(name: "Franprix")
    expect(Shop.count).to eq(1)
   end
end
