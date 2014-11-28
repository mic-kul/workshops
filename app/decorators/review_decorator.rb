class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    return "%s %s" % [self.user.firstname, self.user.lastname]
  end

end
