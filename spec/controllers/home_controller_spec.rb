require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  describe '#index' do
    subject { get :index }

    it 'should respond with success' do
      subject
      expect(response).to be_success
    end
  end
end
