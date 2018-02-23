#
# Cookbook Name:: backup
# Recipe:: hdfs
# Uploads the bootstrap directory to HDFS
# Launches the group directory workflow
#
# Copyright 2018, Bloomberg Finance L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Upload the bootstrap directory to HDFS
hdfs_directory "#{node[:backup][:root]}" do
  hdfs node[:backup][:namenode]
  source node[:backup][:local][:root]
  action :put
end

# # restart oozie coordinators
# oozie_job "backup.hdfs.#{group}.#{job_name}" do
#   url node[:backup][:oozie]
#   config "#{local_conf_dir}/backup-#{job_name}.properties"
#   user node[:backup][:hdfs][:user]
#   action :run
# end
