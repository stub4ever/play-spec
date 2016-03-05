require 'rails_helper'

describe 'Viewing the list of users' do

  it 'Shows the users' do
    visit users_url

    expect(page).to have_text("The list of users")
  end

  it 'Show the name of users' do
    visit users_url

    expect(page).to have_text("Kayo")
    expect(page).to have_text("An")
    expect(page).to have_text("Quoc")
  end

end
