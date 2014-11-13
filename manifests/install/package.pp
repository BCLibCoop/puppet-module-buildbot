class buildbot::install::package(
) {
  ensure_packages(['buildbot', 'buildbot-slave'])
}
