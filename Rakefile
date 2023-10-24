# frozen_string_literal: true

namespace :build do
  src_directory = 'lib/connect_proto/src'

  def compile(src_directory, path)
    print "Compiling #{path}"
    protoc_version = `protoc --version`.split(' ').last
    raise RuntimeError, "Please use protoc 24.4" unless protoc_version =~ /24\.\d+$/

    `protoc --proto_path=#{src_directory} --ruby_out=lib/connect_proto/build #{path}`
    puts ' - done' if $?.exitstatus.zero?
  end

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
task default: 'build:default'
