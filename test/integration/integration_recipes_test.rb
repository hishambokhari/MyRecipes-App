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
    assert_select "a[href=?]", recipe_path(@recipe), text: @recipe.name  #looks for a link
    assert_select "a[href=?]", recipe_path(@recipe2), text: @recipe2.name
  end

  test "should get recipes show" do
    get recipe_path(@recipe)
    assert_template 'recipes/show'
    assert_match @recipe.name, response.body
    assert_match @recipe.description, response.body
    assert_match @chef.chefname, response.body
  end

end