class buildbot::install(
  $method = 'package',
) {
  case $method {
    'git': {
        include buildbot::install::deps
        include buildbot::install::pip
        include buildbot::install::git
        Class['buildbot::install::deps'] -> Class['buildbot::install::pip'] -> Class['buildbot::install::git']
    }
    default: {
        include buildbot::install::package
    }
  }
}
