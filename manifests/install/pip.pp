class buildbot::install::pip {
  include buildbot::params
  $pip_defaults = { 'provider' =>  'pip', require => Class['buildbot::install::deps'], }
  ensure_packages($buildbot::params::pip_packages, $pip_defaults )
}

