#!/opt/puppet/bin/ruby
require 'puppet'

def getusers
  @users = Array.new
  Puppet::Type.type("user").instances.find_all do |user|
    @values = user.retrieve
    @users.push(user.name) unless @values[user.property(:uid)].to_i < 501
  end
  @users unless @users.empty?
end


Facter.add("users") do
  setcode do
    getusers.join(",")
  end
end

getusers.each do |user|
  Facter.add(user) do
    setcode do
      true
    end
  end
end
