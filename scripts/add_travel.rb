#!/usr/bin/env ruby

require 'yaml'
require 'optparse'

def add_travel(name, slug, coords, date, content)
  data_file = '_data/travels.yml'
  
  # Read existing data
  travels = File.exist?(data_file) ? YAML.load_file(data_file) : []
  
  # Create new travel entry
  new_travel = {
    'name' => name,
    'slug' => slug,
    'layout' => 'travel',
    'type' => 'physical',
    'coords' => coords,
    'date' => date,
    'content' => content
  }
  
  # Add to beginning of array (most recent first)
  travels.unshift(new_travel)
  
  # Write back to file
  File.write(data_file, travels.to_yaml)
  
  puts "✅ Added travel page for #{name}"
  puts "📁 File: #{data_file}"
  puts "🌐 URL: /wanderings/#{slug}/"
end

# Command line interface
if ARGV.length >= 4
  name = ARGV[0]
  slug = ARGV[1]
  coords = ARGV[2].split(',').map(&:to_f)
  date = ARGV[3]
  content = ARGV[4] || "## #{name.downcase} #{Date.parse(date).year}\n\n### highlights\n- "
  
  add_travel(name, slug, coords, date, content)
else
  puts "Usage: ruby scripts/add_travel.rb 'City Name' 'city-slug' 'lat,lng' 'YYYY-MM-DD' [content]"
  puts "\nExample:"
  puts "ruby scripts/add_travel.rb 'Paris' 'paris' '48.8566,2.3522' '2024-10-15'"
end
