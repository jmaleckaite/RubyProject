#! receive information in XML
#! store it as transformed ruby hash
#! write output in JSON to root dir
#! input is the xml file

require 'json'
require 'active_support/core_ext/hash'

#When sync mode is true, all output is immediately flushed to the 
#underlying operating system and is not buffered internally.
STDOUT.sync = true

puts "Insert XML file:"
# gets the input and rmeoves line break
$xml_file = STDIN.gets.chomp
extension = File.extname($xml_file)
#checks if the extension is xml
if extension == '.xml'
    def converter
        data = File.open($xml_file)
        #! converts to ruby hash
        rubyHash = Hash.from_xml(data)
        #! print the hash into a JSON file
        File.write('../xml-data.json', JSON.pretty_generate(rubyHash))
        puts "Xml file has been successfully written into xml-data.json"
    end
    puts converter
#if the file is not .xml 
else puts "Not .xml file. Please upload a valid .xml file"
end




