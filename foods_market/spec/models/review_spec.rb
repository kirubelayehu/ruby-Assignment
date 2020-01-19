require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should validate_presence_of :author; :content; :rating }
  it { should validate_numericality_of :rating }
  it { should validate_length_of :content }
  
  it { should belong_to :product }
end
