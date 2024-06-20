class Tournament < ApplicationRecord
  belongs_to :user

  validates :code, uniqueness: true

  after_initialize :set_code

  enum status:{
    waiting: 0,
    in_progress: 1,
    finished: 2
  }

  private

  def set_code
    self.code = generate_code #while Tournament.exists?(code: code)
  end

  def generate_code
    SecureRandom.alphanumeric(5)
  end
end