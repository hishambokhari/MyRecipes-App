require 'test_helper'

class IntegrationRecipesEditTest < ActionDispatch::IntegrationTest

  def setup 
    @chef = Chef.create!(chefname: "hisham", email: "hisham@example.com", password_digest: '123456')
    @recipe = Recipe.create(name: "vegetable saute", description: "great vegetable saute, add veg and oil", chef: @chef)
  end

  
end
