class Question < ActiveRecord::Base
  QUESTION_TYPES = [ 'multiple choice', 'short answer']
  attr_accessible :question_text, :question_type, :correct_answer
  validates :question_text, :correct_answer, presence: true
  validates :question_type, inclusion: QUESTION_TYPES
  
  has_many :responses
     
  def next
    self.class.find(:first, :conditions => ["id > ?", self.id])
  end

end
