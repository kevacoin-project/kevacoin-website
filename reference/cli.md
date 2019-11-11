# Kevacoin Client/API calls list

## Key-value related operations

## **keva_namespace**

Create a namepsace with the given display name.

**Arguments**

1. `<display_name>`: &nbsp; (string, &nbsp; required) &nbsp;  The display name of the namespace. This is for your internal use only and does not require to be unique across the network.

**Results**
<pre>
[
    {
        txid: xxxxxxxxxxxxxx,  (string) Transaction Id
        namespaceId: Nxxxxxx   (string) Unique namespace id, with "N" prefix.
    }
]
</pre>

**Examples**
<pre>
kevacoin-cli keva_namespace "my first namespace"

[
  {
    "txid": "244fcb0f30e26b0fbf346e82494a7ae5e8c3d7e3e70974105e9a19d1b92cb4f5",
    "namespaceId": "NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC"
  }
]

</pre>

## **keva_list_namespaces**

List all the namespaces belong to the current wallet.

**Arguments**

None.

**Results**
<pre>
[
    {
        NamespaceId : Display Name
    }
]
</pre>

**Examples**
<pre>
kevacoin-cli keva_list_namespaces

[
  {
    "NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC": "my first namespace"
  }
]
</pre>

## **keva_put**

Insert or update a key value pair in the given namespace.

**Arguments**

1. `<namespaceId>`: &nbsp; (string, &nbsp; required) &nbsp;  The namespace Id (with "N" prefix) returned by the `keva_namepsace` the call. It is the namespace in which key-pair will be inserted or updated.

2. `<key>`: &nbsp; (string, &nbsp; required) &nbsp;  The key, with maximum size 255 bytes.

3. `<value>`: &nbsp; (string, &nbsp; required) &nbsp;  The value, with maximum size 3072 bytes.

**Results**

The transaction id of this operation.

**Examples**
<pre>
kevacoin-cli keva_put NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC "first key" "first value"

eb6eb57259b5468a156bbca77d56b4863349e1b4bcf7795a6037aef39530b319
</pre>



## **keva_pending**

List all the pending key-value transactions belong to the current wallet.

**Arguments**

**Results**
<pre>
[
  {
    "op":           (string) name of operation
    "namespace":    (string) namespace id
    "display name": (string) display name of the namespace
    "txid":         (string) transaction Id
  }
]
</pre>

**Examples**
<pre>
kevacoin-cli keva_pending

[
  {
    "op": "keva_namespace",
    "namespace": "NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC",
    "display name": "my first namespace",
    "txid": "244fcb0f30e26b0fbf346e82494a7ae5e8c3d7e3e70974105e9a19d1b92cb4f5"
  },
  {
    "op": "keva_put",
    "namespace": "NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC",
    "key": "first key",
    "value": "first value",
    "txid": "eb6eb57259b5468a156bbca77d56b4863349e1b4bcf7795a6037aef39530b319"
  }
]

</pre>

## **keva_get**

Retrieve the value associated with the given key.

**Arguments**

1. `<namespaceId>`: &nbsp; (string, &nbsp; required) &nbsp;  The namespace Id (with "N" prefix) which holds the key-value pair.

2. `<key>`: &nbsp; (string, &nbsp; required) &nbsp;  The key.

**Results**

The value associated with the key in the specified namespace.

**Examples**
<pre>
kevacoin-cli keva_get NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC "first key"

first value
</pre>

## **keva_delete**

Delete the key-value pair in the given namespace.

**Arguments**

1. `<namespaceId>`: &nbsp; (string, &nbsp; required) &nbsp;  The namespace Id (with "N" prefix) which holds the key-value pair.

2. `<key>`: &nbsp; (string, &nbsp; required) &nbsp;  The key.

**Results**

The transaction id of this operation.

**Examples**
<pre>
kevacoin-cli keva_delete NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC "first key"

bf9f4d5767576e511c8277ef8474a8a47f925306a06ebe01a53f8b116ffcc836
</pre>

## **keva_filter**

Scan and list keys matching a regular expression.

**Arguments**

1. `<namespace>`   (string) namespace Id

2. `<regexp>`      (string, optional) filter keys with this regexp

3. `<maxage>`      (numeric, optional, default=36000) only consider names updated in the last `<maxage>` blocks; 0 means all names

4. `<from>`        (numeric, optional, default=0) return from this position onward; index starts at 0.

5. `<nb>`          (numeric, optional, default=0) return only `<nb>` entries; 0 means all.


6. `<stat>`        (string, optional) if set to the string `<stat>`, print statistics instead of returning the names

**Results**

<pre>
[
  {
    "name":    (string) the name of the key,
    "value":   (string) the value associated with the key,
    "txid":    (string) transaction id,
    "address": (string) address that holds this key-value pair,
    "height":  (number) the height of the block that holds this transaction.
  }
]
</pre>

**Examples**
<pre>
kevacoin-cli keva_filter NfjHmcWxHndbfMRG7FeXWtmBEaRp896wBC "first*"

[
  {
    "name": "first key",
    "value": "first value",
    "txid": "7620f6b81997f99c47d478157cbe8129b9841afa0337cb9a80a78d9d9d2bf27f",
    "vout": 0,
    "address": "K9ATguB1UJjTKgYmySGWf7sHBVMf9ME2zM",
    "height": 650
  }
]
</pre>

