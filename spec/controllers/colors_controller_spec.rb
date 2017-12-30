require 'rails_helper'

# generated code modified to new standards and factories

RSpec.describe ColorsController, :type => :controller do

  let(:valid_attributes) {
    # return minimal attributes to create a color
    {name: 'fakeblue'}
  }

  let(:invalid_attributes) {
    # name is a required attribute of color
    {name: ''}
  }

  def session(params={})
    # default should be the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in controller
    default_params = {}
    {params: default_params.merge(params)}
  end

  describe "GET index" do
    it "assigns all colors as @colors" do
      color = Color.create! valid_attributes
      get :index, session()
      expect(assigns(:colors)).to eq([color])
    end
  end

  describe "GET show" do
    it "assigns the requested color as @color" do
      color = Color.create! valid_attributes
      get :show, session({id: color.to_param})
      expect(assigns(:color)).to eq(color)
    end
  end

  describe "GET new" do
    it "assigns a new color as @color" do
      get :new, session()
      expect(assigns(:color)).to be_a_new(Color)
    end
  end

  describe "GET edit" do
    it "assigns the requested color as @color" do
      color = Color.create! valid_attributes
      get :edit, session({id: color.to_param})
      expect(assigns(:color)).to eq(color)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Color" do
        expect {
          post :create, session({color: valid_attributes})
        }.to change(Color, :count).by(1)
      end

      it "assigns a newly created color as @color" do
        post :create, session({color: valid_attributes})
        expect(assigns(:color)).to be_a(Color)
        expect(assigns(:color)).to be_persisted
      end

      it "redirects to the created color" do
        post :create, session({color: valid_attributes})
        expect(response).to redirect_to(Color.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved color as @color" do
        post :create, session({color: invalid_attributes})
        expect(assigns(:color)).to be_a_new(Color)
      end

      it "re-renders the 'new' template" do
        post :create, session({color: invalid_attributes})
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {name: 'newname', size:105}
      }

      it "updates the requested color" do
        color = Color.create! valid_attributes
        put :update, session({id: color.to_param, color: new_attributes})
        color.reload
        expect(color.name).to eq(new_attributes[:name])
      end

      it "assigns the requested color as @color" do
        color = Color.create! valid_attributes
        put :update, session({id: color.to_param, color: valid_attributes})
        expect(assigns(:color)).to eq(color)
      end

      it "redirects to the color" do
        color = Color.create! valid_attributes
        put :update, session({id: color.to_param, color: valid_attributes})
        expect(response).to redirect_to(color)
      end
    end

    describe "with invalid params" do
      it "assigns the color as @color" do
        color = Color.create! valid_attributes
        put :update, session({id: color.to_param, color: invalid_attributes})
        expect(assigns(:color)).to eq(color)
      end

      it "re-renders the 'edit' template" do
        color = Color.create! valid_attributes
        put :update, session({id: color.to_param, color: invalid_attributes})
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested color" do
      color = Color.create! valid_attributes
      expect {
        delete :destroy, session({id: color.to_param})
      }.to change(Color, :count).by(-1)
    end

    it "redirects to the colors list" do
      color = Color.create! valid_attributes
      delete :destroy, session({id: color.to_param})
      expect(response).to redirect_to(colors_url)
    end
  end

end