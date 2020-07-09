class Subsidio < ApplicationRecord
    has_many :favorite_subsidios, dependent: :destroy
    has_many :favorited_by, through: :favorite_subsidios, source: :user
    resourcify
    def self.search(search)
        if search
    
          if search != ''
            nombre = Subsidio.where('title ILIKE ? OR content ILIKE ?',
                                '%' + search + '%', '%' + search + '%')
    
            if nombre
              where(id: nombre)
            else
              Subsidio.all
            end
    
          else
            Subsidio.all
    
          end
    
        else
          Subsidio.all
        end
      end
end
