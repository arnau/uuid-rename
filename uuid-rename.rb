require 'pathname'
require 'securerandom'
require 'fileutils'

collection = ARGV.lazy.flat_map { |item| Pathname.new(item) }

begin
  dir = collection.first.dirname.to_s
  dir_bak = "#{dir}.bak"

  FileUtils.cp_r(dir, dir_bak)
rescue Errno::EEXIST => e
  at_exit { puts "The backup directory #{dir_bak} already exists. Aborting rename." }
  exit
end

collection.each do |path|
  uuid = SecureRandom.uuid
  dt = (Time.now.utc.to_f * 1000000).to_i
  file = path.expand_path
  uuid_path = file.dirname.join("#{dt}-#{uuid}#{file.extname}")
  file.rename(uuid_path)
end

at_exit { puts "UUID rename finished successfully." }
