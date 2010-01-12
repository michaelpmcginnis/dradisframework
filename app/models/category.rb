# This class represents a Note category. Each Category has a name.
class Category < ActiveRecord::Base
  before_destroy :valid_destroy

  private
  def valid_destroy
    if (self.id == 1) 
      errors.add_to_base 'Cannot delete Default category.'
    end
    if ( Note.count(:conditions =>{ :category_id => self.id }) > 0)
      errors.add_to_base 'Cannot delete Category with notes.'
    end
    return errors.count.zero? ? true : false
  end
end
