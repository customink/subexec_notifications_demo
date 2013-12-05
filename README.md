
# Subexec::Notifications (demo)

Small little Rails app meant to demo possible usage of the [subexec-notifications](https://github.com/customink/subexec-notifications) gem. This is by no means exhaustive. I just wanted a simple way to demo how we could implemnet hooks for logging and/or instrumentation critical parts of our applications.

## Dig Deeper

The `config/initializers/subexec_notifications` file demos all the possible places that we instrument `Subexec` (system commands). I have implmented a basic [Librato](https://metrics.librato.com/) subscriber class that would collect these metrics. Check out the `app/models/subscribers` directory. It has a base class that instantiates events so each subclass does not have to. Finally, run `$ rake test` to submit some faux data and events.

**REMEMBER**: This setup does not take into account how one might setup instrumented events that do not block the primary duty of a web process - to serve web requests.

### subexec.hosts

![subexec_hosts](https://f.cloud.github.com/assets/2381/1686755/e54e067e-5deb-11e3-8a7d-ad432aba90ea.png)

### subexec.commands

![subexec_commands](https://f.cloud.github.com/assets/2381/1686754/e3d35c5e-5deb-11e3-8055-7b4579d8102d.png)
