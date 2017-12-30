require 'rails_helper'

# generated code modified to new standards and factories

RSpec.describe WidgetsController, :type => :controller do

  let(:valid_attributes) {
    # return minimal attributes to create a widget
    color = FactoryBot.create(:color, name: 'red')
    {name: 'testwig', size:101, color_id: color.id}
  }

  let(:invalid_attributes) {
    # name is a required attribute of widget
    {name: '', size: 102 }
  }

  def session(params={})
    # default should be the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in controller
    default_params = {}
    {params: default_params.merge(params)}
  end

  describe "GET index" do
    it "assigns all widgets as @widgets" do
      widget = Widget.create! valid_attributes
      get :index, session()
      expect(assigns(:widgets)).to eq([widget])
    end
  end

  describe "GET show" do
    it "assigns the requested widget as @widget" do
      widget = Widget.create! valid_attributes
      get :show, session({id: widget.to_param})
      expect(assigns(:widget)).to eq(widget)
    end
  end

  describe "GET new" do
    it "assigns a new widget as @widget" do
      get :new, session()
      expect(assigns(:widget)).to be_a_new(Widget)
    end
  end

  describe "GET edit" do
    it "assigns the requested widget as @widget" do
      widget = Widget.create! valid_attributes
      get :edit, session({id: widget.to_param})
      expect(assigns(:widget)).to eq(widget)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Widget" do
        expect {
          post :create, session({widget: valid_attributes})
        }.to change(Widget, :count).by(1)
      end

      it "assigns a newly created widget as @widget" do
        post :create, session({widget: valid_attributes})
        expect(assigns(:widget)).to be_a(Widget)
        expect(assigns(:widget)).to be_persisted
      end

      it "redirects to the created widget" do
        post :create, session({widget: valid_attributes})
        expect(response).to redirect_to(Widget.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved widget as @widget" do
        post :create, session({widget: invalid_attributes})
        expect(assigns(:widget)).to be_a_new(Widget)
      end

      it "re-renders the 'new' template" do
        post :create, session({widget: invalid_attributes})
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {name: 'newname', size:105}
      }

      it "updates the requested widget" do
        widget = Widget.create! valid_attributes
        put :update, session({id: widget.to_param, widget: new_attributes})
        widget.reload
        expect(widget.name).to eq(new_attributes[:name])
      end

      it "assigns the requested widget as @widget" do
        widget = Widget.create! valid_attributes
        put :update, session({id: widget.to_param, widget: valid_attributes})
        expect(assigns(:widget)).to eq(widget)
      end

      it "redirects to the widget" do
        widget = Widget.create! valid_attributes
        put :update, session({id: widget.to_param, widget: valid_attributes})
        expect(response).to redirect_to(widget)
      end
    end

    describe "with invalid params" do
      it "assigns the widget as @widget" do
        widget = Widget.create! valid_attributes
        put :update, session({id: widget.to_param, widget: invalid_attributes})
        expect(assigns(:widget)).to eq(widget)
      end

      it "re-renders the 'edit' template" do
        widget = Widget.create! valid_attributes
        put :update, session({id: widget.to_param, widget: invalid_attributes})
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested widget" do
      widget = Widget.create! valid_attributes
      expect {
        delete :destroy, session({id: widget.to_param})
      }.to change(Widget, :count).by(-1)
    end

    it "redirects to the widgets list" do
      widget = Widget.create! valid_attributes
      delete :destroy, session({id: widget.to_param})
      expect(response).to redirect_to(widgets_url)
    end
  end

end
