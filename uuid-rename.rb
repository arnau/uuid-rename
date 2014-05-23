require 'pathname'
require 'securerandom'
require 'fileutils'

bak_dir = "#{ENV['HOME']}/uuid-rename.bak"
FileUtils.mkdir_p(bak_dir)

ARGV.each do |item|
  path = Pathname(item)
  uuid = SecureRandom.uuid
  dt = (Time.now.utc.to_f * 1000000).to_i
  file = path.expand_path
  uuid_path = file.dirname.join("#{dt}-#{uuid}#{file.extname}")

  FileUtils.cp(file, bak_dir)

  file.rename(uuid_path)
end

at_exit { puts "UUID rename finished successfully." }
