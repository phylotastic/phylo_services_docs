# How to Call Phylotastic Web Services
#### Language (Ruby):
**__GET__** Method:

*#Template of a Ruby client to call web services using HTTP GET (service_client_get.rb)*
```ruby
require 'net/http'

def call_service(input_parameter1, input_parameter2 )
    
    uri = URI('http://hostname/servicepath/servicename')
    
    params = { :parameter1_name => input_parameter1, parameter2_name =>input_parameter2}
    
    uri.query = URI.encode_www_form(params)

    response = Net::HTTP.get_response(uri)
  	
    response_body = response.body if response.is_a?(Net::HTTPSuccess)    
    
    #display the response from the web service 	 
    puts response_body
    
end

if __FILE__ == $0
 	call_service(parameter1_value, parameter2_value)
end
```
__Example:__ *(Call a service to get all Species from a Taxon filtered by country)*

```ruby
require 'net/http'
 
def call_service(param1_val, param2_val)
    uri = URI('http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/country_species')
    
    params = { :taxon => param1_val, :country => param2_val}
    
    uri.query = URI.encode_www_form(params)

    response = Net::HTTP.get_response(uri)
  	
    response_body = response.body if response.is_a?(Net::HTTPSuccess)    
  
    puts response_body
    
end

if __FILE__ == $0
 	call_service("Vulpes", "Nepal")
end
```
**__POST__** Method:

*#Template of a Ruby client to call web services using HTTP POST (service_client_post.rb)*

```ruby
require 'net/http'
require 'json'
require 'uri'

def call_service(input_data)
    
    url = 'http://hostname/servicepath/servicename'
    
    uri = URI.parse(url)
    
    headers = {"Content-Type" => "application/json",  "Accept" => "application/json"}
    
    # Creates a http object
    http = Net::HTTP.new(uri.host, uri.port)   
    
    response = http.post(uri.path, input_data.to_json, headers)    
    
    #display the response from the web service 	 
    puts response.body
    
end

if __FILE__ == $0
 	input_data = {"key"=> value}
 	call_service(input_data)
end
```

__Example:__ *(Call a service to resolve scientific names with Open Tree TNRS)*

```ruby
require 'net/http'
require 'json'
require 'uri'

def call_service(input_data)
    
    url = 'http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/names'
    
    uri = URI.parse(url)
    
    headers = {"Content-Type" => "application/json",  "Accept" => "application/json"}
    
    # Creates a http object
    http = Net::HTTP.new(uri.host, uri.port)   
    
    response = http.post(uri.path, input_data.to_json, headers)    
    
    #display the response from the web service 	 
    puts response.body
    
end

if __FILE__ == $0
 	input_data = {"scientificNames"=> ["Formica exsectoides", "Formica pecefica"]}
 	call_service(input_data)
end
```

#### Language (Python):
**__GET__** Method:

*#Template of a Python client to call web services using HTTP GET (service_client_get.py)*

```python
import requests
import urllib

def call_service(inputData):
 	url = "http://hostname/servicepath/servicename"    
 	
 	headers = {'content-type': 'application/json'} 	
 	
 	encoded_data = urllib.urlencode(inputData)
    
 	response = requests.get(url, params=encoded_data, headers=headers)   
 	
	if response.status_code == requests.codes.ok:
 	 	print response.text
 	else:
		print 'Error in response'

if __name__ == '__main__':

 	inputData = {
 	 	'parameter1Name': 'parameter1Value',
 	 	'parameter2Name': 'parameter2Value'  
  	}

  	call_service(inputData)
```

__Example:__ *(Call a service to get all Species from a Taxon filtered by country)*

```python
import requests
import urllib

def call_service(inputData):
 	url = "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/country_species"    
 	headers = {'content-type': 'application/json'} 	
 	
 	encoded_data = urllib.urlencode(inputData)
    
 	response = requests.get(url, params=encoded_data, headers=headers)   
 	
	if response.status_code == requests.codes.ok:
 	 	print response.text
 	else:
		print 'Error in response'

if __name__ == '__main__':

 	inputData = {
 	 	'taxon': 'Panthera',
 	 	'country': 'Bangladesh'   
  	}

  	call_service(inputData)
```

**__POST__** Method:

*#Template of a Python client to call web services using HTTP POST (service_client_post.py)*

```python
import json
import requests

def call_service(inputData):

	url = "http://hostname/servicepath/servicename"    
  	headers = {'content-type': 'application/json'}
 
 	json_inputdata = json.dumps(inputData)
 
 	response = requests.post(url, data=json_inputdata, headers=headers)
    
 	if response.status_code == requests.codes.ok:
 		print response.text
 	else:
	 	print 'Error in response'

if __name__ == '__main__':

 	inputData = {
 	 	'parameter1Name': 'parameter1Value',
 	 	'parameter2Name': 'parameter2Value'  
  	}

  	call_service(inputData)
```
__Example:__ *(Call a service to resolve scientific names with Open Tree TNRS)*

```python
import json
import requests

def call_service(inputData):

	url = "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/names"    
  	headers = {'content-type': 'application/json'}
 
 	json_inputdata = json.dumps(inputData)
 
 	response = requests.post(url, data=json_inputdata, headers=headers)
    
 	if response.status_code == requests.codes.ok:
 		print response.text
 	else:
	 	print 'Error in response'

if __name__ == '__main__':

 	inputData = {
     	 	'scientificNames': ["Formica exsectoides", "Formica pecefica"]
  	}

  	call_service(inputData)
```
