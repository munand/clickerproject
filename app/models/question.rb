class Question < ActiveRecord::Base
  QUESTION_TYPES = [ 'multiple choice', 'short answer']
  attr_accessible :question_text, :question_type, :correct_answer, :answer_a, :answer_b, :answer_c, :answer_d
  validates :question_text, :correct_answer, :answer_a, :answer_b, :answer_c, :answer_d, presence: true
  validates :question_type, inclusion: QUESTION_TYPES
  
  has_many :responses
     
  def next
    self.class.find(:first, :conditions => ["id > ?", self.id])
  end

end
