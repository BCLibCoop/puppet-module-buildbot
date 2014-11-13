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
  include buildbot::params
  include buildbot::install

  ensure_resource('buildbot::user_homedir', 'buildbot', {
    group    => 'buildbot',
    fullname => 'buildbot shared user',
    ingroups => [],
  })
}
