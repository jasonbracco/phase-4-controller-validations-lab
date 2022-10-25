class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}

    def update
        post = Post.find(params[:id])
        post.update!(post_params)
        render json: post
    end


end
