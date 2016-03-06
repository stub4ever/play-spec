module UsersHelper
  def format_gross_age(user)
    if user.gross_age?
      content_tag(:strong, 'Youngster!')
    else
      user.age
    end
  end
end
