class buildbot::install::deps(
	$enabled = true,
	$ensure = 'present'
) {
  include buildbot::params
  if($enabled) {
	ensure_packages($buildbot::params::package_deps, { ensure => $ensure, })
  }
}
