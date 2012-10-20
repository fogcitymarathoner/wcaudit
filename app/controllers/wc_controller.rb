require 'pp'
class WcController < ApplicationController

  def audit11to12
	@audit = Audit11To12.find(:all, :order => "wc11to12_employees.name ASC")

  end
  

  # GET /home/show/1
  # GET /home/show/1.xml
  def show
    @page_name  = 'Year'
    @year = Form1120.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @patient }
    end
  end
  
  def edit
  
    @audit = Audit11To12.find(params[:id])
    @class ="tax-input"
    pp @audit
  end
  def save_form
    audit = Audit11To12.find(params[:id])
    params.each do |key, hash|
       audit[key] = params[key]
    end
    audit.save
    redirect_to  :action => 'audit11to12'
  end
end