#演示Apipie的用法
class UsersController < ApplicationController

  resource_description do #at controller level
    #avaliable keywords: ref dsl_definition.rb#Resource module
    resource_id 'customers'
    short "short description placeholder"
    desc "full description placeholder"
  end

  api :GET, '/customers', 'get customers'
  desc "get customer list in long description"
  see 'customers#show', 'doc in show action'
  #api_version '1.0', :v2
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  api :GET, '/customers/:id', 'Get specified user info'
  param :id, :number, required: true 
  #param :id, Integer #Integer (not work for /users/1, params[:id]=>'1' as string)
  formats ['json', 'html']
  example "in html format: <div>just demo user in html format</div>"
  example 'in json format: {"created_at":"2015-01-04T03:20:57Z","email":"caoruijian@tianji.com","name":"cao"}'
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
