class buildbot::install::deps {
  include buildbot::params

  package { $buildbot::params::package_deps :
    ensure => present,
  }
}
