describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe command('which consul') do
  its('stdout') { should eq "/usr/local/bin/consul\n" }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end
