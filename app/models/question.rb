class Question < ActiveRecord::Base
  attr_accessible :question_text
  has_many :responses
  
  def next
    self.class.find(:first, :conditions => ["id > ?", self.id])
  end

end
