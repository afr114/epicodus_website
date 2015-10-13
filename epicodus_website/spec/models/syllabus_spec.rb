require 'rails_helper'

describe Syllabus do
  it { should validate_presence_of :name}
  it { should have_many :lessons}
end
