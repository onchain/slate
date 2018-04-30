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

* <a href="https://onchain.io/api">https://onchain.io/api</a>

# Authentication

* API Key (ApiKeyAuth)
    - Parameter Name: **X-API-KEY**, in: header. 

<h1 id="ONCHAIN.IO-API-overview-Address-API">Address API</h1>

## Get Balance

<a id="opIdGet Balance"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://onchain.io/api/address/balance/{coin}/{address} \
  -H 'Accept: application/json'

```

```http
GET https://onchain.io/api/address/balance/{coin}/{address} HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/address/balance/{coin}/{address}',
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

fetch('https://onchain.io/api/address/balance/{coin}/{address}',
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

result = RestClient.get 'https://onchain.io/api/address/balance/{coin}/{address}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://onchain.io/api/address/balance/{coin}/{address}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/address/balance/{coin}/{address}");
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
    req, err := http.NewRequest("GET", "https://onchain.io/api/address/balance/{coin}/{address}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /address/balance/{coin}/{address}`

Returns the satoshi balance, usd balance and user viewable balance for an address

<h3 id="Get Balance-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|[coin](#schemacoin)|true|The name of the coin i.e. bitcoin|
|address|path|string|true|The public address to lookup|

#### Enumerated Values

|Parameter|Value|
|---|---|
|coin|bitcoin|
|coin|testnet3|
|coin|litecoin|
|coin|ethereum|
|coin|bitcoin_private|
|coin|bitcoin_gold|
|coin|dash|
|coin|zcash|
|coin|zclassic|

> Example responses

```json
{
  "usd_balance": 120.34,
  "balance": 27018060,
  "unconfirmed_balance": 27018060,
  "human_balance": 0.2701806,
  "human_unconfirmed_balance": 0.2701806
}
```

<h3 id="Get Balance-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the balances|[balance](#schemabalance)|

<aside class="success">
This operation does not require authentication
</aside>

## Get Balances

<a id="opIdGet Balances"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://onchain.io/api/address/balances/{coin}/{addresses} \
  -H 'Accept: application/json'

```

```http
GET https://onchain.io/api/address/balances/{coin}/{addresses} HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/address/balances/{coin}/{addresses}',
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

fetch('https://onchain.io/api/address/balances/{coin}/{addresses}',
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

result = RestClient.get 'https://onchain.io/api/address/balances/{coin}/{addresses}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://onchain.io/api/address/balances/{coin}/{addresses}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/address/balances/{coin}/{addresses}");
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
    req, err := http.NewRequest("GET", "https://onchain.io/api/address/balances/{coin}/{addresses}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /address/balances/{coin}/{addresses}`

Returns the satoshi balance, usd balance and user viewable balance for a set of addresses

<h3 id="Get Balances-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|[coin](#schemacoin)|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|

#### Enumerated Values

|Parameter|Value|
|---|---|
|coin|bitcoin|
|coin|testnet3|
|coin|litecoin|
|coin|ethereum|
|coin|bitcoin_private|
|coin|bitcoin_gold|
|coin|dash|
|coin|zcash|
|coin|zclassic|

> Example responses

```json
{
  "totals": {
    "usd_balance": 120.34,
    "balance": 27018060,
    "unconfirmed_balance": 27018060,
    "human_balance": 0.2701806,
    "human_unconfirmed_balance": 0.2701806
  },
  "addresses": []
}
```

<h3 id="Get Balances-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the balances|[balances](#schemabalances)|

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

`GET /address/history/{coin}/{addresses}`

Returns the transaction history for an address or addresses.

<h3 id="Get History-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|[coin](#schemacoin)|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|

#### Enumerated Values

|Parameter|Value|
|---|---|
|coin|bitcoin|
|coin|testnet3|
|coin|litecoin|
|coin|ethereum|
|coin|bitcoin_private|
|coin|bitcoin_gold|
|coin|dash|
|coin|zcash|
|coin|zclassic|

> Example responses

```json
{
  "total_txs": 37000,
  "txs": [
    {
      "blockheight": 48138,
      "time": 1524579200,
      "total_out": 1,
      "total_in": 1,
      "fees": 40000,
      "vins": [
        {
          "amount": 395260,
          "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
        }
      ],
      "vouts": [
        {
          "amount": 395260,
          "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
        }
      ]
    }
  ]
}
```

<h3 id="Get History-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the transaction history for an address or addresses|[history](#schemahistory)|

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

`GET /address/utxo/{coin}/{addresses}`

Returns the unspent outputs for an address or addresses.

<h3 id="Get Unspent Outs-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|[coin](#schemacoin)|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|

#### Enumerated Values

|Parameter|Value|
|---|---|
|coin|bitcoin|
|coin|testnet3|
|coin|litecoin|
|coin|ethereum|
|coin|bitcoin_private|
|coin|bitcoin_gold|
|coin|dash|
|coin|zcash|
|coin|zclassic|

> Example responses

```json
[
  {
    "amount": 395260,
    "vout": 1,
    "txid": "9bd89c6555d42a2e0922f32f9227440def71ffc4e03ac6eda4c79ebbc0ceed1f",
    "script_pub_key": "76a91404d075b3f501deeef5565143282b6cfe8fad5e9488ac"
  }
]
```

<h3 id="Get Unspent Outs-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Returns the unspent outputs for an address or addresses|Inline|

<h3 id="Get Unspent Outs-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Description|
|---|---|---|---|
|*anonymous*|[[utxo](#schemautxo)]|false|No description|
|» amount|integer|false|No description|
|» vout|integer|false|No description|
|» txid|string|false|No description|
|» script_pub_key|string|false|No description|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="ONCHAIN.IO-API-overview-Transaction-API">Transaction API</h1>

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

`POST /transaction/send/{coin}/{rawtx}`

Send a transaction onto the network.

<h3 id="Send Transaction-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|[coin](#schemacoin)|true|The name of the coin i.e. bitcoin|
|rawtx|path|string|true|The raw signed transaction as a hex string|

#### Enumerated Values

|Parameter|Value|
|---|---|
|coin|bitcoin|
|coin|testnet3|
|coin|litecoin|
|coin|ethereum|
|coin|bitcoin_private|
|coin|bitcoin_gold|
|coin|dash|
|coin|zcash|
|coin|zclassic|

> Example responses

```json
{
  "status_code": 200,
  "message": "3bcf74e3421148db08daf6f5787a698534046bff54b2af1b8252b9166f8f4749"
}
```

<h3 id="Send Transaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Send a transaction onto the network.|Inline|

<h3 id="Send Transaction-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|» status_code|integer|false|No description|
|» message|string|false|No description|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocScoin">coin</h2>

<a id="schemacoin"></a>

```json
"bitcoin"
```

### Properties

*None*

<h2 id="tocSbalance">balance</h2>

<a id="schemabalance"></a>

```json
{
  "usd_balance": 120.34,
  "balance": 27018060,
  "unconfirmed_balance": 27018060,
  "human_balance": 0.2701806,
  "human_unconfirmed_balance": 0.2701806
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|usd_balance|integer|false|No description|
|balance|integer|false|No description|
|unconfirmed_balance|integer|false|No description|
|human_balance|number|false|No description|
|human_unconfirmed_balance|number|false|No description|

<h2 id="tocSaddr_balance">addr_balance</h2>

<a id="schemaaddr_balance"></a>

```json
{
  "address": "1KFHE7w8BhaENAswwryaoccDb6qcT6DbYY",
  "usd_balance": 120.34,
  "balance": 27018060,
  "unconfirmed_balance": 27018060,
  "human_balance": 0.2701806,
  "human_unconfirmed_balance": 0.2701806
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|address|string|false|No description|
|usd_balance|integer|false|No description|
|balance|integer|false|No description|
|unconfirmed_balance|integer|false|No description|
|human_balance|number|false|No description|
|human_unconfirmed_balance|number|false|No description|

<h2 id="tocSbalances">balances</h2>

<a id="schemabalances"></a>

```json
{
  "totals": {
    "usd_balance": 120.34,
    "balance": 27018060,
    "unconfirmed_balance": 27018060,
    "human_balance": 0.2701806,
    "human_unconfirmed_balance": 0.2701806
  },
  "addresses": []
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|totals|[balance](#schemabalance)|false|No description|
|addresses|[[#/definitions/addr_balance](#schema#/definitions/addr_balance)]|false|No description|

<h2 id="tocSvins">vins</h2>

<a id="schemavins"></a>

```json
{
  "amount": 395260,
  "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|amount|integer|false|No description|
|address|string|false|No description|

<h2 id="tocSvouts">vouts</h2>

<a id="schemavouts"></a>

```json
{
  "amount": 395260,
  "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|amount|integer|false|No description|
|address|string|false|No description|

<h2 id="tocStx">tx</h2>

<a id="schematx"></a>

```json
{
  "blockheight": 48138,
  "time": 1524579200,
  "total_out": 1,
  "total_in": 1,
  "fees": 40000,
  "vins": [
    {
      "amount": 395260,
      "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
    }
  ],
  "vouts": [
    {
      "amount": 395260,
      "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
    }
  ]
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|blockheight|integer|false|No description|
|time|integer|false|No description|
|total_out|integer|false|No description|
|total_in|integer|false|No description|
|fees|integer|false|No description|
|vins|[[vins](#schemavins)]|false|No description|
|vouts|[[vouts](#schemavouts)]|false|No description|

<h2 id="tocSutxo">utxo</h2>

<a id="schemautxo"></a>

```json
{
  "amount": 395260,
  "vout": 1,
  "txid": "9bd89c6555d42a2e0922f32f9227440def71ffc4e03ac6eda4c79ebbc0ceed1f",
  "script_pub_key": "76a91404d075b3f501deeef5565143282b6cfe8fad5e9488ac"
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|amount|integer|false|No description|
|vout|integer|false|No description|
|txid|string|false|No description|
|script_pub_key|string|false|No description|

<h2 id="tocShistory">history</h2>

<a id="schemahistory"></a>

```json
{
  "total_txs": 37000,
  "txs": [
    {
      "blockheight": 48138,
      "time": 1524579200,
      "total_out": 1,
      "total_in": 1,
      "fees": 40000,
      "vins": [
        {
          "amount": 395260,
          "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
        }
      ],
      "vouts": [
        {
          "amount": 395260,
          "address": "1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX"
        }
      ]
    }
  ]
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|total_txs|integer|false|No description|
|txs|[[tx](#schematx)]|false|No description|

