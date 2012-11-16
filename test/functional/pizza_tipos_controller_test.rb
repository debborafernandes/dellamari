require 'test_helper'

class PizzaTiposControllerTest < ActionController::TestCase
  setup do
    @pizza_tipo = pizza_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizza_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizza_tipo" do
    assert_difference('PizzaTipo.count') do
      post :create, pizza_tipo: { nome: @pizza_tipo.nome }
    end

    assert_redirected_to pizza_tipo_path(assigns(:pizza_tipo))
  end

  test "should show pizza_tipo" do
    get :show, id: @pizza_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizza_tipo
    assert_response :success
  end

  test "should update pizza_tipo" do
    put :update, id: @pizza_tipo, pizza_tipo: { nome: @pizza_tipo.nome }
    assert_redirected_to pizza_tipo_path(assigns(:pizza_tipo))
  end

  test "should destroy pizza_tipo" do
    assert_difference('PizzaTipo.count', -1) do
      delete :destroy, id: @pizza_tipo
    end

    assert_redirected_to pizza_tipos_path
  end
end
