class Comment < ApplicationRecord
    belongs_to :article

    def article_should_be_published
        errors.add(:article_id, 'is not published yet') if article && !article, published?
    end

    def email_article_author
        puts "We will notify #{article.user.email} in Chapter 12" if article.user
    end
end
