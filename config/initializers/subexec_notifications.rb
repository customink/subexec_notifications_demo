
ActiveSupport::Notifications.subscribe('subexec.run') { |*args| Subscribers::SubexecLibrato.new(*args) }
# ActiveSupport::Notifications.subscribe('subexec.run') { |*args| Subscribers::SubexecStatusBoard.new(*args) }

