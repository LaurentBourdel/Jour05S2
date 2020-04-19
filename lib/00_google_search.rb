

require 'launchy'

def check_if_user_gave_input
  abort("google_search: missing input") if ARGV.empty?
end

def get_search_keywords
  return search_keywords = ARGV
end

def build_search_url(keywords)
	search_url = "https://www.google.com/search?q=" + keywords.join("+")
	puts "#{search_url}"

  return search_url
end

def google_search(keywords)
  puts "searching google for: #{keywords}"
end

def main
	check_if_user_gave_input
	google_search(get_search_keywords)
	path = build_search_url(get_search_keywords)
	Launchy.open(path)
end

main