require 'rails_helper'

describe "View indivual user page" do

  it "show page of the user with all information" do
    user1 = User.create(username: "4stars",
                        name: "Kayo",
                        age: 25,
                        email: "kayo@gmail.com",
                        password: "21312ew",
                        address: "Nijmegen",
                        bio: "I am Developer")

    visit "http://example.com/users/#{user1.id}"

    expect(page).to have_text(user1.username)
    expect(page).to have_text(user1.age)
    expect(page).to have_text(user1.email)
    expect(page).to have_text(user1.address)
    expect(page).to have_text(user1.bio)
  end

  it 'show bio within 30 characters' do
    user1 = User.create(username: "4stars",
                        name: "Kayo",
                        age: 25,
                        email: "kayo@gmail.com",
                        password: "21312ew",
                        address: "Nijmegen",
                        bio: "a" * 30)

    visit "http://example.com/users/#{user1.id}"

    expect(page).to have_text(user1.bio)
  end

end
