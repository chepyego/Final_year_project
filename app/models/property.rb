class Property < ApplicationRecord
    it { should belong_to(:account) } 
end
