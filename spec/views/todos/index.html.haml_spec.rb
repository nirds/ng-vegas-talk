require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        :done => false,
        :name => "Name1",
        :order => 1
      ),
      Todo.create!(
        :done => false,
        :name => "Name",
        :order => 1
      )
    ])
  end

  it "renders a list of todos" do
    render
    expect(rendered).to match /ng-view/
  end
end
