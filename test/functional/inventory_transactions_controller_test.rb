require 'test_helper'

class InventoryTransactionsControllerTest < ActionController::TestCase
  setup do
    @inventory_transaction = inventory_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_transaction" do
    assert_difference('InventoryTransaction.count') do
      post :create, inventory_transaction: { cost: @inventory_transaction.cost, inventory_item_id: @inventory_transaction.inventory_item_id, invoice_item_id: @inventory_transaction.invoice_item_id, price: @inventory_transaction.price, quantity: @inventory_transaction.quantity }
    end

    assert_redirected_to inventory_transaction_path(assigns(:inventory_transaction))
  end

  test "should show inventory_transaction" do
    get :show, id: @inventory_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_transaction
    assert_response :success
  end

  test "should update inventory_transaction" do
    put :update, id: @inventory_transaction, inventory_transaction: { cost: @inventory_transaction.cost, inventory_item_id: @inventory_transaction.inventory_item_id, invoice_item_id: @inventory_transaction.invoice_item_id, price: @inventory_transaction.price, quantity: @inventory_transaction.quantity }
    assert_redirected_to inventory_transaction_path(assigns(:inventory_transaction))
  end

  test "should destroy inventory_transaction" do
    assert_difference('InventoryTransaction.count', -1) do
      delete :destroy, id: @inventory_transaction
    end

    assert_redirected_to inventory_transactions_path
  end
end
