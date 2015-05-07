require 'rails_helper'

RSpec.describe Todo, type: :model do

   it "should require a name" do
    todo = Todo.new
    expect(todo).to be_invalid
   end
end
