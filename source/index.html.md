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

<h1 id="ONCHAIN.IO-API-overview-Coin-Data">Coin Data</h1>

## Get_Balance

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

*Returns balances for coins*

Returns the satoshi balance, usd balance and user viewable balance for a set of addresses

<h3 id="Get_Balance-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|

> Example responses

<h3 id="Get_Balance-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|The combined balances|Inline|

<h3 id="Get_Balance-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="ONCHAIN.IO-API-overview-Default">Default</h1>

## getVersionDetailsv2

<a id="opIdgetVersionDetailsv2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://onchain.io/v2 \
  -H 'Accept: application/json'

```

```http
GET https://onchain.io/v2 HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/v2',
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

fetch('https://onchain.io/v2',
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

result = RestClient.get 'https://onchain.io/v2',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://onchain.io/v2', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/v2");
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
    req, err := http.NewRequest("GET", "https://onchain.io/v2", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /v2`

*Show API version details*

> Example responses

<h3 id="getVersionDetailsv2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|200 203 response|Inline|
|203|[Non-Authoritative Information](https://tools.ietf.org/html/rfc7231#section-6.3.4)|200 203 response|Inline|

<h3 id="getVersionDetailsv2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|

Status Code **203**

|Name|Type|Required|Description|
|---|---|---|---|

<aside class="success">
This operation does not require authentication
</aside>

