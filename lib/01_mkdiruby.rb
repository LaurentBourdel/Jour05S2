
def check_if_user_gave_input
  abort("mkdiruby: missing input") if ARGV.empty?
end

def get_inputs
  return inputs = ARGV
end

def create_directories(directory)

	name = directory.to_s

	Dir.mkdir("/Users/solartech971/THP/#{name}")
	Dir.mkdir("/Users/solartech971/THP/#{name}/lib")
	
	puts " "
  puts "Creating directories:"
  puts "> /Users/solartech971/THP/#{name}"
  puts "> /Users/solartech971/THP/#{name}/lib"

end

def create_gem_file(directory)

	name = directory.to_s
	
	gem_file = File.open("/Users/solartech971/THP/#{name}/Gemfile", "a")
	gem_file.puts("source 'https://rubygems.org'")
	gem_file.puts("ruby '2.5.1'")
	gem_file.puts("gem 'rspec'")
	gem_file.puts("gem 'pry'")
	gem_file.puts("gem 'rubocop', '~> 0.57.2'")
	gem_file.puts("gem 'nokogiri'")
	gem_file.puts("gem 'launchy'")
	gem_file.puts("#gem 'dotenv'")
	gem_file.puts("#gem 'twitter'")
	gem_file.close

	puts " "
  puts "Creating Gemfile:"
  puts "> /Users/solartech971/THP/#{name}/Gemfile"
  #puts "> source 'https://rubygems.org'"
	#puts "> ruby '2.5.1'"
	#puts "> gem 'rspec'"
	#puts "> gem 'pry'"
	#puts "> gem 'rubocop', '~> 0.57.2'"
	#puts "> gem 'nokogiri'"
	#puts "> gem 'launchy'"
	#puts "> #gem 'dotenv'"
	#puts "> #gem 'twitter'"

end

def run_rspec_init(directory)

	name = directory.to_s

	puts " "
	puts "Running rspec --init:"

	Dir.chdir("/Users/solartech971/THP/#{name}")
	system("rspec --init")
	
end


def create_ruby_files(inputs,directory)

	dir_name = directory.to_s

	puts " "
	puts "Creating ruby files:"

	for index in 0..inputs.count-2
		rb_program_name = "0#{index}_" + inputs[index+1].to_s + ".rb"
		File.open("/Users/solartech971/THP/#{dir_name}/lib/#{rb_program_name}", "a")
		puts "> /Users/solartech971/THP/#{dir_name}/lib/#{rb_program_name}"
		spec_program_name = "0#{index}_" + inputs[index+1].to_s + "_spec.rb"
		File.open("/Users/solartech971/THP/#{dir_name}/spec/#{spec_program_name}", "a")
		puts "> /Users/solartech971/THP/#{dir_name}/spec/#{spec_program_name}"
	end

end

def create_read_me_file(directory)

	name = directory.to_s

	read_me_file = File.open("/Users/solartech971/THP/#{name}/README.md", "a")

	puts " "
  puts "Creating README file:"
  puts "> /Users/solartech971/THP/#{name}/README.md"

	read_me_file.puts(" ")
	read_me_file.puts("# Project Title")
	read_me_file.puts(" ")
	read_me_file.puts("One Paragraph of project description goes here")
	read_me_file.puts(" ")
	read_me_file.puts("## Getting Started")
	read_me_file.puts(" ")
	read_me_file.puts("These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.")
	read_me_file.puts(" ")
	read_me_file.puts("### Prerequisites")
	read_me_file.puts(" ")
	read_me_file.puts("What things you need to install the software and how to install them")
	read_me_file.puts("Give examples")
	read_me_file.puts(" ")
	read_me_file.puts("### Installing")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("## Running the tests")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("### Break down into end to end tests")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("### And coding style tests")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("## Deployment")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("## Built With")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("## Contributing")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("## Versioning")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("## Authors")
	read_me_file.puts(" ")
	read_me_file.puts("Laurent Bourdel")
	read_me_file.puts(" ")
	read_me_file.puts("## License")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	read_me_file.puts("## Acknowledgments")
	read_me_file.puts(" ")
	read_me_file.puts("N/A")
	read_me_file.puts(" ")
	
end

def main

	check_if_user_gave_input
	dir_name = get_inputs[0].to_s
	create_directories(dir_name)
	create_gem_file(dir_name)
	run_rspec_init(dir_name)
	create_ruby_files(get_inputs, dir_name)
	create_read_me_file(dir_name)
	
end

main