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

Returns the satoshi balance, usd balance and user viewable balance for an address. For ERC20 tokens you need to pass in the contract ID and the number of decimal places.

<h3 id="Get Balance-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|address|path|string|true|The public address to lookup|
|contract_id|query|string|false|The contract ID of the ERC20 token.|
|decimal_places|query|integer|false|The number of decimal places for this contract.|

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
|coin|path|string|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|
|contract_id|query|string|false|The contract ID of the ERC20 token.|
|decimal_places|query|integer|false|The number of decimal places for this contract.|

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
  "addresses": [
    {
      "address": "1KFHE7w8BhaENAswwryaoccDb6qcT6DbYY",
      "usd_balance": 120.34,
      "balance": 27018060,
      "unconfirmed_balance": 27018060,
      "human_balance": 0.2701806,
      "human_unconfirmed_balance": 0.2701806
    }
  ]
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
|coin|path|string|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|
|contract_id|query|string|false|The contract ID of the ERC20 token.|
|decimal_places|query|integer|false|The number of decimal places for this contract.|

> Example responses

```json
{
  "total_txs": 37000,
  "txs": [
    {
      "confirmations": 3,
      "time": 1524579200,
      "is_deposit": true,
      "address": "1KFHE7w8BhaENAswwryaoccDb6qcT6DbYY",
      "amount": 27018060,
      "human_amount": 0.2701806
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
|coin|path|string|true|The name of the coin i.e. bitcoin|
|addresses|path|string|true|A comma seperated list of public addresses|

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

## Create Unsigned Transaction

<a id="opIdCreate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/transaction/create/{coin}?to=2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5&from=036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49&amount=80000 \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/transaction/create/{coin}?to=2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5&from=036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49&amount=80000 HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/transaction/create/{coin}',
  method: 'post',
  data: '?to=2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5&from=036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49&amount=80000',
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

fetch('https://onchain.io/api/transaction/create/{coin}?to=2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5&from=036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49&amount=80000',
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

result = RestClient.post 'https://onchain.io/api/transaction/create/{coin}',
  params: {
  'to' => 'string',
'from' => 'string',
'amount' => 'integer'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/transaction/create/{coin}', params={
  'to': '2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5',  'from': '036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49',  'amount': '80000'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/transaction/create/{coin}?to=2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5&from=036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49&amount=80000");
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
    req, err := http.NewRequest("POST", "https://onchain.io/api/transaction/create/{coin}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /transaction/create/{coin}`

Create an unsigned transaction. OnChain returns the transaction for the specified coin in hex format along with a list of hashes that need to be signed.

<h3 id="Create Unsigned Transaction-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|to|query|string|true|The address to send coins to.|
|from|query|string|true|The addresses we are sending coins from. OnChain will fetch unspent outs from each address in order until the amount to send is met. We use the public hex key of the address not the hash.|
|amount|query|integer|true|The amount we wish to send.|
|fee_address|query|string|false|An address to send fees to.|
|fee_amount|query|string|false|The amount of fees to send.|
|miners_fee|query|integer|false|The amount to send to the miners.|

> Example responses

```json
{
  "tx": "02000000011cd5d7621e2a7c9403e54e089cb0b5430b83ed13f1b897d3e319b100ba1b059b01000000db00483045022100d7534c80bc0a42addc3d955f74e31610aa78bf15d79ec4df4c36dc98e802f5200220369cab1bccb2dbca0921444ce3fafb15129fa0494d041998be104df39b8895ec01483045022100fe48c4c1d46e163acaff6b0d2e702812d20",
  "total_input_value": 500000,
  "hashes": [
    {
      "input_index": 0,
      "public_key": "036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49",
      "hash_to_sign": "004cfaf7cff86e7f171db23d67acd6c986273e578d7466e43e2b78913e1ce7c7"
    }
  ]
}
```

<h3 id="Create Unsigned Transaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|The unsigned transaction in hex format and a list of hashes that need signatures.|[hashes_to_sign](#schemahashes_to_sign)|

<aside class="success">
This operation does not require authentication
</aside>

## Sign and Send a Transaction

<a id="opIdSign and send"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/transaction/sign_and_send/{coin} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/transaction/sign_and_send/{coin} HTTP/1.1
Host: onchain.io
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/transaction/sign_and_send/{coin}',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "tx": "string",
  "signatures": {
    "hash_to_sign": "7a77eb8e0e9e56ca925473cbfaa215822b1bc73de40dc9098d66b2eb785af9db",
    "signature": "304402202915d9763c944918712155522ed99d1f01d7998c349316b5ba2d75ac41bb3dae022033b4d5800d2c5f461abf42a967625f77f4e16933bf9fa81aa753c423687eee02",
    "public_key": "036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49",
    "input_index": 0
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://onchain.io/api/transaction/sign_and_send/{coin}',
{
  method: 'POST',
  body: inputBody,
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
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://onchain.io/api/transaction/sign_and_send/{coin}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/transaction/sign_and_send/{coin}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/transaction/sign_and_send/{coin}");
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
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://onchain.io/api/transaction/sign_and_send/{coin}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /transaction/sign_and_send/{coin}`

Sign and send transaction onto the network.

> Body parameter

```json
{
  "tx": "string",
  "signatures": {
    "hash_to_sign": "7a77eb8e0e9e56ca925473cbfaa215822b1bc73de40dc9098d66b2eb785af9db",
    "signature": "304402202915d9763c944918712155522ed99d1f01d7998c349316b5ba2d75ac41bb3dae022033b4d5800d2c5f461abf42a967625f77f4e16933bf9fa81aa753c423687eee02",
    "public_key": "036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49",
    "input_index": 0
  }
}
```

<h3 id="Sign and Send a Transaction-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|body|body|[signatures](#schemasignatures)|true|No description|
|» tx|body|string|false|No description|
|» signatures|body|[signature](#schemasignature)|false|No description|
|»» hash_to_sign|body|string|false|No description|
|»» signature|body|string|false|No description|
|»» public_key|body|string|false|No description|
|»» input_index|body|integer|false|No description|

> Example responses

```json
{
  "status_code": 200,
  "message": "3bcf74e3421148db08daf6f5787a698534046bff54b2af1b8252b9166f8f4749"
}
```

<h3 id="Sign and Send a Transaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Send a transaction onto the network.|Inline|

<h3 id="Sign and Send a Transaction-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|» status_code|integer|false|No description|
|» message|string|false|No description|

<aside class="success">
This operation does not require authentication
</aside>

## Send Raw Transaction

<a id="opIdSend Raw"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/transaction/send_raw/{coin}?rawtx=string \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/transaction/send_raw/{coin}?rawtx=string HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/transaction/send_raw/{coin}',
  method: 'post',
  data: '?rawtx=string',
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

fetch('https://onchain.io/api/transaction/send_raw/{coin}?rawtx=string',
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

result = RestClient.post 'https://onchain.io/api/transaction/send_raw/{coin}',
  params: {
  'rawtx' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/transaction/send_raw/{coin}', params={
  'rawtx': 'string'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/transaction/send_raw/{coin}?rawtx=string");
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
    req, err := http.NewRequest("POST", "https://onchain.io/api/transaction/send_raw/{coin}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /transaction/send_raw/{coin}`

Send a transaction onto the network.

<h3 id="Send Raw Transaction-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|coin|path|string|true|The name of the coin i.e. bitcoin|
|rawtx|query|string|true|The raw signed transaction as a hex string|

> Example responses

```json
{
  "status_code": 200,
  "message": "3bcf74e3421148db08daf6f5787a698534046bff54b2af1b8252b9166f8f4749"
}
```

<h3 id="Send Raw Transaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Send a transaction onto the network.|Inline|

<h3 id="Send Raw Transaction-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|» status_code|integer|false|No description|
|» message|string|false|No description|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="ONCHAIN.IO-API-overview-Ethereum-API">Ethereum API</h1>

## Create Unsigned Transaction

<a id="opIdCreate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/ethereum/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000 \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/ethereum/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000 HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/ethereum/create/',
  method: 'post',
  data: '?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000',
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

fetch('https://onchain.io/api/ethereum/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000',
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

result = RestClient.post 'https://onchain.io/api/ethereum/create/',
  params: {
  'to' => 'string',
'from' => 'string',
'amount' => 'integer'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/ethereum/create/', params={
  'to': '2.5329069089123447e+76',  'from': '2.5329069089123447e+76',  'amount': '80000'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/ethereum/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000");
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
    req, err := http.NewRequest("POST", "https://onchain.io/api/ethereum/create/", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /ethereum/create/`

Create an unsigned transaction. OnChain returns the ethereum transaction in hex format along with a hash that would need to be signed.

<h3 id="Create Unsigned Transaction-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|to|query|string|true|The address to send Ether to.|
|from|query|string|true|The addresses we are sending ether from.|
|amount|query|integer|true|The amount we wish to send in GWEI.|
|gas_price|query|integer|false|The gas price to pay.|
|gas_limit|query|integer|false|The gas limit to use.|

> Example responses

```json
{
  "tx": "02000000011cd5d7621e2a7c9403e54e089cb0b5430b83ed13f1b897d3e319b100ba1b059b01000000db00483045022100d7534c80bc0a42addc3d955f74e31610aa78bf15d79ec4df4c36dc98e802f5200220369cab1bccb2dbca0921444ce3fafb15129fa0494d041998be104df39b8895ec01483045022100fe48c4c1d46e163acaff6b0d2e702812d20",
  "hash_to_sign": "955f74e31610aa78bf15d79ec4df4c36dc98e802f52002"
}
```

<h3 id="Create Unsigned Transaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|The unsigned transaction in hex format and the hash to sign.|[ethereum_to_sign](#schemaethereum_to_sign)|

<aside class="success">
This operation does not require authentication
</aside>

## Sign and send transaction.

<a id="opIdSign and send"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/ethereum/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52 \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/ethereum/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52 HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/ethereum/sign_and_send/',
  method: 'post',
  data: '?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52',
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

fetch('https://onchain.io/api/ethereum/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52',
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

result = RestClient.post 'https://onchain.io/api/ethereum/sign_and_send/',
  params: {
  'to' => 'string',
'from' => 'string',
'amount' => 'integer',
'r' => 'string',
's' => 'string',
'v' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/ethereum/sign_and_send/', params={
  'to': '2.5329069089123447e+76',  'from': '2.5329069089123447e+76',  'amount': '80000',  'r': '37ffbebc90cd580b516d99cc53050e93a6cd5f',  's': '37ffbebc90cd580b516d99cc53050e93a6cd5f',  'v': '52'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/ethereum/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52");
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
    req, err := http.NewRequest("POST", "https://onchain.io/api/ethereum/sign_and_send/", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /ethereum/sign_and_send/`

Sign and send transaction onto the Ethereum network.

<h3 id="Sign and send transaction.-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|to|query|string|true|The address to send Ether to.|
|from|query|string|true|The addresses we are sending ether from.|
|amount|query|integer|true|The amount we wish to send in GWEI.|
|r|query|string|true|The signed r value.|
|s|query|string|true|The signed r value.|
|v|query|string|true|The signed r value.|
|gas_price|query|integer|false|The gas price to pay.|
|gas_limit|query|integer|false|The gas limit to use.|

> Example responses

```json
{
  "status_code": 200,
  "message": "3bcf74e3421148db08daf6f5787a698534046bff54b2af1b8252b9166f8f4749"
}
```

<h3 id="Sign and send transaction.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Send a transaction onto the network.|Inline|

<h3 id="Sign and send transaction.-responseschema">Response Schema</h3>

Status Code **default**

|Name|Type|Required|Description|
|---|---|---|---|
|» status_code|integer|false|No description|
|» message|string|false|No description|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="ONCHAIN.IO-API-overview-ERC20">ERC20</h1>

## Create Unsigned Transaction

<a id="opIdCreate"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/erc20/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18 \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/erc20/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18 HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/erc20/create/',
  method: 'post',
  data: '?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18',
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

fetch('https://onchain.io/api/erc20/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18',
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

result = RestClient.post 'https://onchain.io/api/erc20/create/',
  params: {
  'to' => 'string',
'from' => 'string',
'amount' => 'integer',
'contract_id' => 'string',
'decimal_places' => 'integer'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/erc20/create/', params={
  'to': '2.5329069089123447e+76',  'from': '2.5329069089123447e+76',  'amount': '80000',  'contract_id': '6.058968844090876e+47',  'decimal_places': '18'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/erc20/create/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18");
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
    req, err := http.NewRequest("POST", "https://onchain.io/api/erc20/create/", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /erc20/create/`

Create an unsigned transaction. OnChain returns the ethereum transaction in hex format along with a hash that would need to be signed.

<h3 id="Create Unsigned Transaction-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|to|query|string|true|The address to send Ether to.|
|from|query|string|true|The addresses we are sending ether from.|
|amount|query|integer|true|The amount we wish to send in GWEI.|
|contract_id|query|string|true|The contract ID of the ERC20 token.|
|decimal_places|query|integer|true|The number of decimal places for this contract.|
|gas_price|query|integer|false|The gas price to pay.|
|gas_limit|query|integer|false|The gas limit to use.|

> Example responses

```json
{
  "tx": "02000000011cd5d7621e2a7c9403e54e089cb0b5430b83ed13f1b897d3e319b100ba1b059b01000000db00483045022100d7534c80bc0a42addc3d955f74e31610aa78bf15d79ec4df4c36dc98e802f5200220369cab1bccb2dbca0921444ce3fafb15129fa0494d041998be104df39b8895ec01483045022100fe48c4c1d46e163acaff6b0d2e702812d20",
  "hash_to_sign": "955f74e31610aa78bf15d79ec4df4c36dc98e802f52002"
}
```

<h3 id="Create Unsigned Transaction-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|The unsigned transaction in hex format and the hash to sign.|[ethereum_to_sign](#schemaethereum_to_sign)|

<aside class="success">
This operation does not require authentication
</aside>

## Sign and send transaction.

<a id="opIdSign and send"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://onchain.io/api/erc20/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52 \
  -H 'Accept: application/json'

```

```http
POST https://onchain.io/api/erc20/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52 HTTP/1.1
Host: onchain.io

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://onchain.io/api/erc20/sign_and_send/',
  method: 'post',
  data: '?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52',
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

fetch('https://onchain.io/api/erc20/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52',
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

result = RestClient.post 'https://onchain.io/api/erc20/sign_and_send/',
  params: {
  'to' => 'string',
'from' => 'string',
'amount' => 'integer',
'contract_id' => 'string',
'decimal_places' => 'integer',
'r' => 'string',
's' => 'string',
'v' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.post('https://onchain.io/api/erc20/sign_and_send/', params={
  'to': '2.5329069089123447e+76',  'from': '2.5329069089123447e+76',  'amount': '80000',  'contract_id': '6.058968844090876e+47',  'decimal_places': '18',  'r': '37ffbebc90cd580b516d99cc53050e93a6cd5f',  's': '37ffbebc90cd580b516d99cc53050e93a6cd5f',  'v': '52'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("https://onchain.io/api/erc20/sign_and_send/?to=2.5329069089123447e%2B76&from=2.5329069089123447e%2B76&amount=80000&contract_id=6.058968844090876e%2B47&decimal_places=18&r=37ffbebc90cd580b516d99cc53050e93a6cd5f&s=37ffbebc90cd580b516d99cc53050e93a6cd5f&v=52");
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
    req, err := http.NewRequest("POST", "https://onchain.io/api/erc20/sign_and_send/", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /erc20/sign_and_send/`

Sign and send transaction onto the Ethereum network.

<h3 id="Sign and send transaction.-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|to|query|string|true|The address to send Ether to.|
|from|query|string|true|The addresses we are sending ether from.|
|amount|query|integer|true|The amount we wish to send in GWEI.|
|contract_id|query|string|true|The contract ID of the ERC20 token.|
|decimal_places|query|integer|true|The number of decimal places for this contract.|
|r|query|string|true|The signed r value.|
|s|query|string|true|The signed r value.|
|v|query|string|true|The signed r value.|
|gas_price|query|integer|false|The gas price to pay.|
|gas_limit|query|integer|false|The gas limit to use.|

> Example responses

```json
{
  "status_code": 200,
  "message": "3bcf74e3421148db08daf6f5787a698534046bff54b2af1b8252b9166f8f4749"
}
```

<h3 id="Sign and send transaction.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Send a transaction onto the network.|Inline|

<h3 id="Sign and send transaction.-responseschema">Response Schema</h3>

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
|usd_balance|number|false|No description|
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
  "addresses": [
    {
      "address": "1KFHE7w8BhaENAswwryaoccDb6qcT6DbYY",
      "usd_balance": 120.34,
      "balance": 27018060,
      "unconfirmed_balance": 27018060,
      "human_balance": 0.2701806,
      "human_unconfirmed_balance": 0.2701806
    }
  ]
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|totals|[balance](#schemabalance)|false|No description|
|addresses|[[addr_balance](#schemaaddr_balance)]|false|No description|

<h2 id="tocStx">tx</h2>

<a id="schematx"></a>

```json
{
  "confirmations": 3,
  "time": 1524579200,
  "is_deposit": true,
  "address": "1KFHE7w8BhaENAswwryaoccDb6qcT6DbYY",
  "amount": 27018060,
  "human_amount": 0.2701806
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|confirmations|integer|false|No description|
|time|integer|false|No description|
|is_deposit|boolean|false|No description|
|address|string|false|No description|
|amount|integer|false|No description|
|human_amount|number|false|No description|

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
      "confirmations": 3,
      "time": 1524579200,
      "is_deposit": true,
      "address": "1KFHE7w8BhaENAswwryaoccDb6qcT6DbYY",
      "amount": 27018060,
      "human_amount": 0.2701806
    }
  ]
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|total_txs|integer|false|No description|
|txs|[[tx](#schematx)]|false|No description|

<h2 id="tocShashes_to_sign">hashes_to_sign</h2>

<a id="schemahashes_to_sign"></a>

```json
{
  "tx": "02000000011cd5d7621e2a7c9403e54e089cb0b5430b83ed13f1b897d3e319b100ba1b059b01000000db00483045022100d7534c80bc0a42addc3d955f74e31610aa78bf15d79ec4df4c36dc98e802f5200220369cab1bccb2dbca0921444ce3fafb15129fa0494d041998be104df39b8895ec01483045022100fe48c4c1d46e163acaff6b0d2e702812d20",
  "total_input_value": 500000,
  "hashes": [
    {
      "input_index": 0,
      "public_key": "036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49",
      "hash_to_sign": "004cfaf7cff86e7f171db23d67acd6c986273e578d7466e43e2b78913e1ce7c7"
    }
  ]
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|tx|string|false|No description|
|total_input_value|integer|false|No description|
|hashes|[[hash_to_sign](#schemahash_to_sign)]|false|No description|

<h2 id="tocSethereum_to_sign">ethereum_to_sign</h2>

<a id="schemaethereum_to_sign"></a>

```json
{
  "tx": "02000000011cd5d7621e2a7c9403e54e089cb0b5430b83ed13f1b897d3e319b100ba1b059b01000000db00483045022100d7534c80bc0a42addc3d955f74e31610aa78bf15d79ec4df4c36dc98e802f5200220369cab1bccb2dbca0921444ce3fafb15129fa0494d041998be104df39b8895ec01483045022100fe48c4c1d46e163acaff6b0d2e702812d20",
  "hash_to_sign": "955f74e31610aa78bf15d79ec4df4c36dc98e802f52002"
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|tx|string|false|No description|
|hash_to_sign|string|false|No description|

<h2 id="tocShash_to_sign">hash_to_sign</h2>

<a id="schemahash_to_sign"></a>

```json
{
  "input_index": 0,
  "public_key": "036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49",
  "hash_to_sign": "004cfaf7cff86e7f171db23d67acd6c986273e578d7466e43e2b78913e1ce7c7"
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|input_index|integer|false|No description|
|public_key|string|false|No description|
|hash_to_sign|string|false|No description|

<h2 id="tocSsignatures">signatures</h2>

<a id="schemasignatures"></a>

```json
{
  "tx": "string",
  "signatures": {
    "hash_to_sign": "7a77eb8e0e9e56ca925473cbfaa215822b1bc73de40dc9098d66b2eb785af9db",
    "signature": "304402202915d9763c944918712155522ed99d1f01d7998c349316b5ba2d75ac41bb3dae022033b4d5800d2c5f461abf42a967625f77f4e16933bf9fa81aa753c423687eee02",
    "public_key": "036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49",
    "input_index": 0
  }
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|tx|string|false|No description|
|signatures|[signature](#schemasignature)|false|No description|

<h2 id="tocSsignature">signature</h2>

<a id="schemasignature"></a>

```json
{
  "hash_to_sign": "7a77eb8e0e9e56ca925473cbfaa215822b1bc73de40dc9098d66b2eb785af9db",
  "signature": "304402202915d9763c944918712155522ed99d1f01d7998c349316b5ba2d75ac41bb3dae022033b4d5800d2c5f461abf42a967625f77f4e16933bf9fa81aa753c423687eee02",
  "public_key": "036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49",
  "input_index": 0
}
```

### Properties

|Name|Type|Required|Description|
|---|---|---|---|
|hash_to_sign|string|false|No description|
|signature|string|false|No description|
|public_key|string|false|No description|
|input_index|integer|false|No description|

