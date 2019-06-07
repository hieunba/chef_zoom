#
# Cookbook:: zoom
# Recipe:: default
#
# Copyright:: 2019, Nghiem Ba Hieu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

deploy_options = '/qn /quiet /norestart'
deploy_options << ' ZoomAutoUpdate="true"' if node['zoom']['options']['autoupdate']
deploy_options << ' ZoomAutoStart="true"' if node['zoom']['options']['autostart']
deploy_options << ' ZSILENTSTART="true"' if node['zoom']['options']['silent_autostart']
deploy_options << ' ZNoDesktopShortCut="true"' if node['zoom']['options']['no_desktop_shortcut']
deploy_options << " ZSSOHOST=\"#{node['zoom']['options']['sso_url']}\"" if !node['zoom']['options']['sso_url'].nil? && !node['zoom']['options']['sso_url'].empty?

windows_package 'Zoom' do
  source node['zoom']['source']
  checksum node['zoom']['checksum'] if node['zoom']['checksum']
  installer_type :custom
  options deploy_options
  action :install
end
