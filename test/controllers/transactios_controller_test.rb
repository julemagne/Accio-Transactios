require 'test_helper'

class TransactiosControllerTest < ActionController::TestCase
  setup do
    @transactio = transactios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transactio" do
    assert_difference('Transactio.count') do
      post :create, transactio: { amount: @transactio.amount, name: @transactio.name }
    end

    assert_redirected_to transactio_path(assigns(:transactio))
  end

  test "should show transactio" do
    get :show, id: @transactio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transactio
    assert_response :success
  end

  test "should update transactio" do
    patch :update, id: @transactio, transactio: { amount: @transactio.amount, name: @transactio.name }
    assert_redirected_to transactio_path(assigns(:transactio))
  end

  test "should destroy transactio" do
    assert_difference('Transactio.count', -1) do
      delete :destroy, id: @transactio
    end

    assert_redirected_to transactios_path
  end
end
