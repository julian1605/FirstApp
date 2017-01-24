require 'rails_helper'

describe UsersController, :type => :controller do
	
	before do
		@user = User.create!(email: "john@mail.com", password: "test123")
		@user2 = User.create!(email: "john@mail2.com", password: "test123")
	end

	describe 'GET #show' do
		context 'User is logged in' do
			before do
				sign_in @user
			end

			it 'loads correct user details' do
				get :show, id: @user.id
				expect(response).to be_success
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end

			it 'does not grant access to another users page' do
				get :show, id: @user2.id
				expect(response).not_to be_success
				expect(response).to have_http_status(302)
				expect(response).to redirect_to(root_path)
			end

		end

		context 'No user is logged in' do
			it 'redirects to login' do
				get :show, id: @user.id
				expect(response).to redirect_to(new_user_session_path)
			end
		end

	end

end