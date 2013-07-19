#!/usr/bin/env ruby
require 'irc/base'

class Derk < IRC::Bot
  host    'irc.unixhub.net'
  nick    'derk'
  port    6667
  channel '#unixhub'

  mention_match /reload!/ do
    self.class.reset!
    load __FILE__
  end
  start!
end
