---
title: ONCHAIN.IO API overview v2
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - javascript--nodejs: Node.JS
  - ruby: Ruby
  - python: Python
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<h1 id="ONCHAIN.IO-API-overview">ONCHAIN.IO API overview v2</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Base URLs:

* <a href="https://onchain.io">https://onchain.io</a>

<h1 id="ONCHAIN.IO-API-overview-Address-API">Address API</h1>

## Get Balance

<a id="opIdGet Balance"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://onchain.io/api/address/{coin}/{addresses} \
  -H 'Accept: application/json'

```

```http
GET https://onchain.io/api/address/{coin}/{addresses} HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/address/{coin}/{addresses}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://onchain.io/api/address/{coin}/{addresses}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://onchain.io/api/address/{coin}/{addresses}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://onchain.io/api/address/{coin}/{addresses}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/address/{coin}/{addresses}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://onchain.io/api/address/{coin}/{addresses}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/address/{coin}/{addresses}`

Returns the satoshi balance, usd balance and user viewable balance for a set of addresses

<h3 id="Get Balance-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|

> Example responses

```json
[
  {
    "usd_balance": 0,
    "satoshi_balance": 0
  }
]
```

<h3 id="Get Balance-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Returns the pets that were deleted|Inline|

<h3 id="Get Balance-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|*anonymous*|[[balance](#schemabalance)]|false|No description|
|» usd_balance|integer|true|No description|
|» satoshi_balance|integer|true|No description|

<aside class="success">
This operation does not require authentication
</aside>

## Get History

<a id="opIdGet History"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://onchain.io/api/address/history/{coin}/{addresses} \
  -H 'Accept: application/json'

```

```http
GET https://onchain.io/api/address/history/{coin}/{addresses} HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/address/history/{coin}/{addresses}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://onchain.io/api/address/history/{coin}/{addresses}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://onchain.io/api/address/history/{coin}/{addresses}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://onchain.io/api/address/history/{coin}/{addresses}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/address/history/{coin}/{addresses}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://onchain.io/api/address/history/{coin}/{addresses}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/address/history/{coin}/{addresses}`

Returns the transaction history for an address or addresses.

<h3 id="Get History-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|

> Example responses

```json
[
  {
    "usd_balance": 0,
    "satoshi_balance": 0
  }
]
```

<h3 id="Get History-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Returns the pets that were deleted|Inline|

<h3 id="Get History-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|*anonymous*|[[balance](#schemabalance)]|false|No description|
|» usd_balance|integer|true|No description|
|» satoshi_balance|integer|true|No description|

<aside class="success">
This operation does not require authentication
</aside>

## Get Unspent Outs

<a id="opIdGet Unspent"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://onchain.io/api/address/utxo/{coin}/{addresses} \
  -H 'Accept: application/json'

```

```http
GET https://onchain.io/api/address/utxo/{coin}/{addresses} HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/address/utxo/{coin}/{addresses}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://onchain.io/api/address/utxo/{coin}/{addresses}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://onchain.io/api/address/utxo/{coin}/{addresses}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://onchain.io/api/address/utxo/{coin}/{addresses}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/address/utxo/{coin}/{addresses}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://onchain.io/api/address/utxo/{coin}/{addresses}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/address/utxo/{coin}/{addresses}`

Returns the unspent outputs for an address or addresses.

<h3 id="Get Unspent Outs-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|

> Example responses

```json
[
  {
    "usd_balance": 0,
    "satoshi_balance": 0
  }
]
```

<h3 id="Get Unspent Outs-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Returns the pets that were deleted|Inline|

<h3 id="Get Unspent Outs-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|*anonymous*|[[balance](#schemabalance)]|false|No description|
|» usd_balance|integer|true|No description|
|» satoshi_balance|integer|true|No description|

<aside class="success">
This operation does not require authentication
</aside>

## Send Transaction

<a id="opIdSend TX"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/transaction/send/{coin}/{rawtx} \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/transaction/send/{coin}/{rawtx} HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/transaction/send/{coin}/{rawtx}',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://onchain.io/api/transaction/send/{coin}/{rawtx}',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.post 'https://onchain.io/api/transaction/send/{coin}/{rawtx}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/transaction/send/{coin}/{rawtx}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/transaction/send/{coin}/{rawtx}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://onchain.io/api/transaction/send/{coin}/{rawtx}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/transaction/send/{coin}/{rawtx}`

Send a transaction onto the network.

<h3 id="Send Transaction-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|rawtx|path|string|true|The raw signed transaction as a hex string|

> Example responses

```json
[
  {
    "usd_balance": 0,
    "satoshi_balance": 0
  }
]
```

<h3 id="Send Transaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Returns the pets that were deleted|Inline|

<h3 id="Send Transaction-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|*anonymous*|[[balance](#schemabalance)]|false|No description|
|» usd_balance|integer|true|No description|
|» satoshi_balance|integer|true|No description|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocSbalance">balance</h2>

<a id="schemabalance"></a>

```json
{
  "usd_balance": 0,
  "satoshi_balance": 0
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|usd_balance|integer|true|No description|
|satoshi_balance|integer|true|No description|

