require File.dirname(__FILE__) + '/../spec_helper'

describe ProblemasController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Problema.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Problema.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Problema.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(problema_url(assigns[:problema]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Problema.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Problema.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Problema.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Problema.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Problema.first
    response.should redirect_to(problema_url(assigns[:problema]))
  end

  it "destroy action should destroy model and redirect to index action" do
    problema = Problema.first
    delete :destroy, :id => problema
    response.should redirect_to(problemas_url)
    Problema.exists?(problema.id).should be_false
  end
end
