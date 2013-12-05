require 'test_helper'

class DemoCommandTest < ActiveSupport::TestCase

  test "flex subexec notifications" do
    50.times do
      Subexec.run "echo 'quick'"
      Subexec.run "echo 'sleep1' && sleep #{rand}"
      Subexec.run "echo 'quick'"
      Subexec.run "uptime && sleep 2"
      Subexec.run "echo 'quick'"
      Subexec.run "echo 'sleep2' && sleep 2"
      image = MiniMagick::Image.open("http://www.google.com/images/logos/logo.png")
      image.resize "5x5"
      image.format "gif"
      image.write "localcopy.gif"
      Subexec.run "echo 'quick'"
      Subexec.run "uptime && sleep 2"
      Subexec.run "echo 'sleep1' && sleep #{rand}"
      image = MiniMagick::Image.open("http://www.google.com/images/logos/logo.png")
      image.resize "5x5"
      image.format "gif"
      image.write "localcopy.gif"
      Subexec.run "uptime"
      Subexec.run "echo 'sleep1' && sleep #{rand}"
      Subexec.run "uptime"
      Subexec.run "echo 'sleep1' && sleep #{rand}"
    end
  end


end

