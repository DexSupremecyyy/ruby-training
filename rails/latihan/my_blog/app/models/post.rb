class Post < ApplicationRecord
  validates :judul, presence:true

  validates :isi, length: {minimum: 10}
end
