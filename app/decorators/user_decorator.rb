class UserDecorator < Draper::Decorator
  delegate_all

  def person
    self.firstname + " " + self.lastname
  end

end
