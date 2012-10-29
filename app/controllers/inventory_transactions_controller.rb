require 'pp'
class InventoryTransactionsController < ApplicationController
  # GET /inventory_transactions
  # GET /inventory_transactions.json
  def index
    @inventory_transactions = InventoryTransaction.find(:all, :order => "id")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventory_transactions }
    end
  end

  # GET /inventory_transactions/1
  # GET /inventory_transactions/1.json
  def show
    @inventory_transaction = InventoryTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventory_transaction }
    end
  end

  # GET /inventory_transactions/new
  # GET /inventory_transactions/new.json
  def new
    @inventory_transaction = InventoryTransaction.new
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventory_transaction }
    end
  end

  # GET /inventory_transactions/1/edit
  def edit
    @inventory_transaction = InventoryTransaction.find(params[:id])
  end

  # POST /inventory_transactions
  # POST /inventory_transactions.json
  def create
    pp params
    @inventory_transaction = InventoryTransaction.new(params[:inventory_transaction])
    @inventory_transaction[:transaction_type] = params[:transaction_type]
    respond_to do |format|
      if @inventory_transaction.save
        format.html { redirect_to @inventory_transaction, notice: 'Inventory transaction was successfully created.' }
        format.json { render json: @inventory_transaction, status: :created, location: @inventory_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @inventory_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_transactions/1
  # PUT /inventory_transactions/1.json
  def update
    @inventory_transaction = InventoryTransaction.find(params[:id])
    @inventory_transaction[:transaction_type] = params[:transaction_type]

    respond_to do |format|
      if @inventory_transaction.update_attributes(params[:inventory_transaction])
        format.html { redirect_to @inventory_transaction, notice: 'Inventory transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inventory_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_transactions/1
  # DELETE /inventory_transactions/1.json
  def destroy
    @inventory_transaction = InventoryTransaction.find(params[:id])
    @inventory_transaction.destroy

    respond_to do |format|
      format.html { redirect_to inventory_transactions_url }
      format.json { head :no_content }
    end
  end
end
