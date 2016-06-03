require 'serverspec'

set :backend, :exec

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/var/www/html/index.html') do
  it { should be_file }
  it { should be_owned_by 'root' }
end
