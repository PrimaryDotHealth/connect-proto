# frozen_string_literal: true

namespace :protobuf do
  src_directory = 'lib/connect_proto/src'

  def compile(src_directory, path)
    print "Compiling #{path}"
    `protoc --proto_path=#{src_directory} --ruby_out=lib/connect_proto/build #{path}`
    puts ' - done' if $?.exitstatus.zero?
  end

  namespace :build do
    task :default do
      Dir.glob("#{src_directory}/**/*.proto").each do |protobuf|
        compile(src_directory, protobuf)
      end
    end

    desc 'Watch protobuf src directory and compile after any changes'
    task :watch do
      require 'listen'
      listener = Listen.to(src_directory, only: /.proto$/, relative: true) do |modified, added, removed|
        (modified + added).each do |path|
          compile(src_directory, path)
        end
        removed.each do |path|
          puts "Deleting #{path}"
          File.delete(path) if File.exist?(path)
        end
      end
      listener.start
      puts "Watching #{src_directory}/**/*.proto"
      sleep
    end
  end

  desc 'Compile all protobufs'
  task build: 'build:default'
end
