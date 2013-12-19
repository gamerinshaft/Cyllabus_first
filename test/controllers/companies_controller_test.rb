require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { company_name: @company.company_name, cover: @company.cover, established_at: @company.established_at, homepage_url: @company.homepage_url, logo: @company.logo, mail: @company.mail, number_of_members: @company.number_of_members, phone: @company.phone, slideshare: @company.slideshare, twitter: @company.twitter, vine: @company.vine, youtube: @company.youtube }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { company_name: @company.company_name, cover: @company.cover, established_at: @company.established_at, homepage_url: @company.homepage_url, logo: @company.logo, mail: @company.mail, number_of_members: @company.number_of_members, phone: @company.phone, slideshare: @company.slideshare, twitter: @company.twitter, vine: @company.vine, youtube: @company.youtube }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
