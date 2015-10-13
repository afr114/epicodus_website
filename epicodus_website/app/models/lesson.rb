class Lesson < ActiveRecord::Base
  belongs_to :syllabus

  validates :name, :presence => true
end
