# puppet-module-buildbot

This is a buildbot module for puppet. It installs buildbot from the
buildbot git repo on github.com.

The module was tested on:

  * Debian 6.0.5
  * Ubuntu 12.10 (Quantal)

Initial development was targetted towards use with Vagrant
<http://vagrantup.com>

Patches and pull requests are welcome.

## License

2-clause BSD

## Contact

Jason Edgecombe : jason at rampaginggeek dot net

##Support

Please log tickets and issues at our [Projects site](http://github.com/edgester/puppet-buildbot)

##Example

Here is an example of how to use the module to set up a build master and
two slaves on the same host:

    buildbot::master::instance { 'my_master' :
      user        => 'buildmaster',
      group       => 'buildbot',
      project_dir => '/home/buildmaster/buildbot',
      config      => '/vagrant/puppet/files/master.cfg',
    }

    buildbot::slave::instance { 'my_slave1':
      user             => 'buildslave',
      group            => 'buildbot',
      project_dir      => '/home/buildslave/buildbot',
      master_host_port => 'localhost:9989',
      slave_name       => 'mybuildslave',
      slave_password   => 'password',
      admin_contact    => 'Buildslave admin <user@example.com>',
    }

    buildbot::slave::instance { 'my_slave2':
      user             => 'buildslave2',
      group            => 'buildbot',
      project_dir      => '/home/buildslave2/buildbot2',
      master_host_port => 'localhost:9989',
      slave_name       => 'mybuildslave2',
      slave_password   => 'password',
      admin_contact    => 'Buildslave admin <user@example.com>',
    }

    class{'buildbot::install::git':
    # the 'source' parameter defaults to buildbot's git repo
    #  source   => 'git://github.com/buildbot/buildbot.git',
    }
