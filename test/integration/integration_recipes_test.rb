require 'test_helper'

class IntegrationRecipesTest < ActionDispatch::IntegrationTest

  def setup
    @chef = Chef.create!(chefname: "hisham", email: "hisham@example.com", password_digest: '123456')
    @recipe = Recipe.create(name: "vegetable saute", description: "great vegetable saute, add veg and oil", chef: @chef)
    @recipe2 = Recipe.create(name: "chicken saute", description: "great chicken dish", chef: @chef)
  end

  test "should get recipes index" do
    get recipes_path
    assert_response :success
  end

  test "should get recipes listing" do
    get recipes_path
    assert_template 'recipes/index'
    assert_match @recipe.name, response.body
    assert_match @recipe2.name, response.body
  end

end