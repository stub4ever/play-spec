require 'rails_helper'

describe "View indivual user page" do

  it "shows page of the user with all information" do
    user1 = User.create(user_attributes)

    visit "http://example.com/users/#{user1.id}"

    expect(page).to have_text(user1.username)
    expect(page).to have_text(user1.age)
    expect(page).to have_text(user1.email)
    expect(page).to have_text(user1.address)
    expect(page).to have_text(user1.bio)
  end

  it 'shows bio within 30 characters' do
    user1 = User.create(user_attributes)

    visit "http://example.com/users/#{user1.id}"

    expect(page).to have_text(user1.bio)
  end

end



