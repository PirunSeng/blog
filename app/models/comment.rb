class Comment < ApplicationRecord
  belongs_to :article, optional: true
  # validates :article, presence: true
end
