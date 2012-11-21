class Question < ActiveRecord::Base
  attr_accessible :question_text
  
  def next
    self.class.find(:first, :conditions => ["id > ?", self.id])
  end

end
