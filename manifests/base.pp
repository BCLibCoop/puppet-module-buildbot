# === Authors
#
# Jason Edgecombe <jason@rampaginggeek.com>
#
# === Copyright
#
# Copyright 2012 Jason Edgecombe, unless otherwise noted.
#
class buildbot::base {
  include apt
  include buildbot::install::deps
  include buildbot::params

  $pip_defaults = { 'provider' => 'pip', 'require' => Class["buildbot::install::deps"] }
  create_resources(package, $buildbot::params::pip_packages,
      $pip_defaults )

  buildbot::user_homedir { "buildbot":
    group    => "buildbot",
    fullname => "buildbot shared user",
    ingroups => [],
  }
}
