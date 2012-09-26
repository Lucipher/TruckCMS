require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ContactsRepaiersController do

  # This should return the minimal set of attributes required to create a valid
  # ContactsRepaier. As you add validations to ContactsRepaier, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContactsRepaiersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all contacts_repaiers as @contacts_repaiers" do
      contacts_repaier = ContactsRepaier.create! valid_attributes
      get :index, {}, valid_session
      assigns(:contacts_repaiers).should eq([contacts_repaier])
    end
  end

  describe "GET show" do
    it "assigns the requested contacts_repaier as @contacts_repaier" do
      contacts_repaier = ContactsRepaier.create! valid_attributes
      get :show, {:id => contacts_repaier.to_param}, valid_session
      assigns(:contacts_repaier).should eq(contacts_repaier)
    end
  end

  describe "GET new" do
    it "assigns a new contacts_repaier as @contacts_repaier" do
      get :new, {}, valid_session
      assigns(:contacts_repaier).should be_a_new(ContactsRepaier)
    end
  end

  describe "GET edit" do
    it "assigns the requested contacts_repaier as @contacts_repaier" do
      contacts_repaier = ContactsRepaier.create! valid_attributes
      get :edit, {:id => contacts_repaier.to_param}, valid_session
      assigns(:contacts_repaier).should eq(contacts_repaier)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ContactsRepaier" do
        expect {
          post :create, {:contacts_repaier => valid_attributes}, valid_session
        }.to change(ContactsRepaier, :count).by(1)
      end

      it "assigns a newly created contacts_repaier as @contacts_repaier" do
        post :create, {:contacts_repaier => valid_attributes}, valid_session
        assigns(:contacts_repaier).should be_a(ContactsRepaier)
        assigns(:contacts_repaier).should be_persisted
      end

      it "redirects to the created contacts_repaier" do
        post :create, {:contacts_repaier => valid_attributes}, valid_session
        response.should redirect_to(ContactsRepaier.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contacts_repaier as @contacts_repaier" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContactsRepaier.any_instance.stub(:save).and_return(false)
        post :create, {:contacts_repaier => {}}, valid_session
        assigns(:contacts_repaier).should be_a_new(ContactsRepaier)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContactsRepaier.any_instance.stub(:save).and_return(false)
        post :create, {:contacts_repaier => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contacts_repaier" do
        contacts_repaier = ContactsRepaier.create! valid_attributes
        # Assuming there are no other contacts_repaiers in the database, this
        # specifies that the ContactsRepaier created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ContactsRepaier.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => contacts_repaier.to_param, :contacts_repaier => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested contacts_repaier as @contacts_repaier" do
        contacts_repaier = ContactsRepaier.create! valid_attributes
        put :update, {:id => contacts_repaier.to_param, :contacts_repaier => valid_attributes}, valid_session
        assigns(:contacts_repaier).should eq(contacts_repaier)
      end

      it "redirects to the contacts_repaier" do
        contacts_repaier = ContactsRepaier.create! valid_attributes
        put :update, {:id => contacts_repaier.to_param, :contacts_repaier => valid_attributes}, valid_session
        response.should redirect_to(contacts_repaier)
      end
    end

    describe "with invalid params" do
      it "assigns the contacts_repaier as @contacts_repaier" do
        contacts_repaier = ContactsRepaier.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContactsRepaier.any_instance.stub(:save).and_return(false)
        put :update, {:id => contacts_repaier.to_param, :contacts_repaier => {}}, valid_session
        assigns(:contacts_repaier).should eq(contacts_repaier)
      end

      it "re-renders the 'edit' template" do
        contacts_repaier = ContactsRepaier.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContactsRepaier.any_instance.stub(:save).and_return(false)
        put :update, {:id => contacts_repaier.to_param, :contacts_repaier => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contacts_repaier" do
      contacts_repaier = ContactsRepaier.create! valid_attributes
      expect {
        delete :destroy, {:id => contacts_repaier.to_param}, valid_session
      }.to change(ContactsRepaier, :count).by(-1)
    end

    it "redirects to the contacts_repaiers list" do
      contacts_repaier = ContactsRepaier.create! valid_attributes
      delete :destroy, {:id => contacts_repaier.to_param}, valid_session
      response.should redirect_to(contacts_repaiers_url)
    end
  end

end