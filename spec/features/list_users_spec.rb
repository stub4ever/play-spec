require 'rails_helper'

describe 'Viewing the list of users' do

   it 'Show all users username' do
    user1 = User.create(username: "4stars",
                        name: "Kayo",
                        age: 25,
                        email: "kayo@gmail.com",
                        password: "21312ew",
                        address: "Nijmegen",
                        bio: "I am Developer")

    user2 = User.create(username: "Aetherius",
                        name: "An",
                        age: 22,
                        email: "an@gmail.com",
                        password: "1221",
                        address: "Oss")

    user3 = User.create(username: "Hydeout",
                        name: "Quoc",
                        age: 25,
                        email: "quic@gmail.com",
                        password: "Quocokq1",
                        address: "Almere")
    visit users_url

    expect(page).to have_text("3 Users")

    expect(page).to have_text(user1.username)
    expect(page).to have_text(user2.username)
    expect(page).to have_text(user3.username)
  end
end

