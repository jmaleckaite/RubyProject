#! receive information in XML
#! store it as transformed ruby hash
#! write output in JSON to root dir
#! input is the xml file
require 'json'
require 'xmlsimple'
#! pretty printer
require 'pp'

#! converts xml to hash
hash = XmlSimple.xml_in('hr_test_1.xml')

#! example of a hash
h = {name: "Justina", surname: "Maleckaite", contactno: 1233,
    attachment: "name", address: {city: "Ferrara", country: "Italy"}}

#! print the hash example
pp h

