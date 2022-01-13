class Book < ApplicationRecord
  def self.search(search)
    if search
      where("title LIKE ? OR author LIKE ? OR classification LIKE ? OR genre LIKE ? OR types LIKE?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Book.all
    end
  end
end
