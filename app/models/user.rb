class User < ActiveRecord::Base
  def gross_age?
    age >= 18
  end
end
