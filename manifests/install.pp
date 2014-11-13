class buildbot::install(
  $method = 'package',
) {
  case $method {
    'git': { include buildbot::install::git }
    default: { include buildbot::install::package }
  }
}
