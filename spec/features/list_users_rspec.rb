require 'rails_helper'

describe 'Viewing the list of users' do


   it 'Show all information of the user' do

    user1 = User.create(username: "4stars",
                        name: "Kayo",
                        age: 25,
                        email: "kayo@gmail.com",
                        password: "21312ew",
                        address: "Nijmegen")

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
    expect(page).to have_text(user1.password)
    expect(page).to have_text(user1.age)
    expect(page).to have_text(user1.email)
    expect(page).to have_text(user1.address)

    expect(page).to have_text(user2.name)
    expect(page).to have_text(user3.name)
  end

end
