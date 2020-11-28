#! receive information in XML
#! store it as transformed ruby hash
#! write output in JSON to root dir
#! input is the xml file


require 'json'
#! API for XML processing
require 'xmlsimple'

#! converts xml file to hash
hashFile = XmlSimple.xml_in('hr_test_1.xml')

#! example of a hash

#! print the hash into a JSON file
File.write('./xml-data.json', JSON.pretty_generate(hashFile))