class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # scope :created_before, ->(time) { where("created_at > ?", time) if time.present? }
  # enum published: [:true, :false]
  # enum availability: [:available, :unavailable]
  # has_many :comments, dependent: :destroy, inverse_of: :article
  # validates :title, presence: true,
  #                   length: { minimum: 5 }
  # validates_associated :comments
  # before_save :do_before
  # around_save :do_something
  # after_save :do_after
  # after_rollback :after_roll
  # validates :title, presence: true
  # before_validation :set_title_before_validation
  # after_validation :set_title_after_validation
  # after_initialize :say_hi
  # after_initialize do |a|
    # binding.pry
  # end

  # def say_hi
    # binding.pry
  # end

  def set_title_before_validation
    self.title = 'Title before validation'
    # binding.pry
  end

  def set_title_after_validation
    self.title = 'Title after validation'
  end

  # def after_roll
    # binding.pry
  # end

  def do_before
    self.title = 'Before save again'
    # true
  end

  def do_something
    self.title = 'Around'
    # puts 'Hello World'
    true
  end
  #
  # def do_after
  #   self.title = 'After save'
  # end

end
