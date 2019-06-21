class Heroine < ApplicationRecord
    belongs_to :power

    validates :super_name, uniqueness: true


    def self.search(search) 
        if search 
            heroine_power = heroine_power.find_by([name: search]) 
            if heroine_power
                self.where( power_id: heroine_power ) 
            else  
                Heroine.all  
            end 
        else  
            Heroine.all 
        end 
    end 
  end




 

# 7. Make sure no two heroines have the same super name. -->

