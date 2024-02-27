require 'httparty'
require 'json'

API_KEY = 'AIzaSyAYINi88bPuak2bEasfSPk683HzZmiD-Xs'
QUERY = 'books'  # Example query
MAX_RESULTS = 30  # Maximum number of results you want to retrieve

response = HTTParty.get(
  'https://www.googleapis.com/books/v1/volumes',
  query: { q: QUERY, key: API_KEY, maxResults: MAX_RESULTS }
)

if response.success?
  data = JSON.parse(response.body)
  items = data['items']

  items.each do |item|
    volume_info = item['volumeInfo']
    title = volume_info['title']
    authors = volume_info['authors'] || ["N/A"]
    description = volume_info['description'] || "N/A"
    published_date = volume_info['publishedDate']&.slice(0, 4) || "N/A"
    isbn = volume_info.dig('industryIdentifiers', 0, 'identifier') || "N/A"
    publisher = volume_info['publisher'] || "N/A"

    puts "Title: #{title}"
    puts "Authors: #{authors.join(', ')}"
    puts "Description: #{description}"
    puts "Published Date: #{published_date}"
    puts "ISBN: #{isbn}"
    puts "Publisher: #{publisher}"
    puts "------------"
  end
else
  puts "Error: #{response.code}"
end
