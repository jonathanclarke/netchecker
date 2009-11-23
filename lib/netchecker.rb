#!/usr/bin/env ruby
# 
# Author::      Jonathan Clarke <jonathan@beilabs.com>
# Copyright::   Copyright (c) 2009 beilabs.com
# License::     GPL
# URL::         http://www.beilabs.com
# 

# This class was because someone couldnt be arsed checking if google.com was working on a dongle in railscamp, Melbourne
#

require 'socket'

class Netchecker
  
  Version = '0.1'

  attr_accessor :config_file

  def initialize()
  end
  
  def check_url(requested_url, port)
    begin
      TCPSocket.new requested_url, port
      return true
    rescue SocketError
      return false
    end
  end
end
