require 'rails_helper'

describe 'navigate to user page' do

  it 'navigate from users list to user page ' do

     user1 = User.create(user_attributes)

    visit users_url

    click_link user1.username

    expect(current_path).to eq(user_path(user1))
  end

  it 'navigate from user page back to users list' do

     user1 = User.create(user_attributes)

    visit user_url(user1)

    click_link "Back to users list"

    expect(current_path).to eq(users_path)
  end
end
