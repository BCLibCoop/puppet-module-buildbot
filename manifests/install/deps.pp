class buildbot::install::deps {
  include buildbot::params
  ensure_packages($buildbot::params::package_deps)
}
