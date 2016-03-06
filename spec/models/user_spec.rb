require 'rails_helper'

describe "A User" do
  it "is a youngster if the age is less than 18" do
    user = User.new(age: 17)

    expect(user.gross_age?).to eq(true)
  end
end
