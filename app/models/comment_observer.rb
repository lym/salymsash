class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    puts " We will notify the author in chapter 9"
  end
end
