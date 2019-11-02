# packages from:
# https://www.elastic.co/guide/en/elasticsearch/client/curator/current/apt-repository.html#apt-repository
#
# needs to be "debian" for precise, trusty, xenial
# and "debian9" for bionic, due to ssl versions 1.0.x vs 1.1.x
curator_debian_uri = node['lsb']['release'].to_i >= 18 ? 'debian9' : 'debian'

apt_repository 'curator' do
  key 'https://packages.elastic.co/GPG-KEY-elasticsearch'
  arch 'amd64'
  uri "https://packages.elastic.co/curator/5/#{curator_debian_uri}"
  components ['main']
  distribution 'stable'
end

package 'elasticsearch-curator' do
  version "5.8.1"
  action :upgrade
end

cookbook_file '/usr/local/sbin/es_cleanup.sh' do
  source 'es_cleanup.sh'
  owner 'root'
  group 'root'
  mode '0755'
end

cron_d 'clear_es_history' do
  minute '0'
  hour '*'
  command '/usr/local/sbin/es_cleanup.sh 1>/dev/null'
  user 'root'
  path '/bin:/usr/bin:/usr/local/bin'
  home '/tmp'
  shell '/bin/bash'
end
