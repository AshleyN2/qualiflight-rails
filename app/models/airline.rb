class Airline < ApplicationRecord
    has_many :reviews

    before_create :slugify # sets sulgify before created in db

    # Converts  name to lowercase & adds hyphen to whitespaces
    def slugify
        self.slug = name.parameterize
    end

    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
