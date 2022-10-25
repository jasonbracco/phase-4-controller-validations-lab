class Author < ApplicationRecord

    validates :name, presence: true
    validates :email, uniqueness: true

    def create
        author = Author.create!(author_params)
        render json: author, status: :created
    end
end
