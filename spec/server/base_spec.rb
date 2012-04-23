require File.dirname(__FILE__) + "/../spec_helper"
require File.dirname(__FILE__) + "/../../lib/server"

include Server

describe Base do
  it "should not die on initialize" do
    s = Base.new
  end

  it "should loop" do
    s = Base.new
    s.loop
  end
end
