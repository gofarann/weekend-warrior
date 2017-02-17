gem 'minitest', '>= 5.0.0'
require 'minitest/pride' #these are mini gems that are already in ruby being activated
require 'minitest/autorun'
require_relative 'hello_world' # this is requiring a file without the .rb
# relative file must be in the same folder as the test file

describe "Hello World" do # this line is describing what the program "Hello World" should do ,# the do is creating a block
  # each it block is a test case

  it "When given no name, it should greet the world!" do
    expect(hello_world).must_equal 'Hello, World!'
  end

  it "When given 'Alice' it should greet Alice!" do
    expect(hello_world 'Alice').must_equal 'Hello, Alice!'
  end

  it "When given 'Bob' it should greet Bob!" do
    expect(hello_world 'Bob').must_equal 'Hello, Bob!'
  end

  it "When given an empty string it should greet the world!" do
    expect(hello_world '').must_equal 'Hello, World!'
  end
end
