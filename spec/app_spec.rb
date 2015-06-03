require 'spec_helper'

describe 'app' do
  it 'has a root path' do
    get '/'
    expect(last_response).to be_ok
  end
end
