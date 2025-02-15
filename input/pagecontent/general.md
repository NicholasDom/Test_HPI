
The following notes apply to all resources in this implementation.



### Resource representation: Json & XML

Resources can be expressed either as Json or XML, and both formats are supported by this implementation.


### Id and Identifiers

All of the FHIR resources in this implementation have both an id and an identifier.

The id is the ‘physical’ identity of the resource, and the identifier is the business identifier. 

In this implementation, **the id of the resource will always be the same as the value of the identifier assigned by the HPI with a use value of ‘official’**. (There will only ever be a single identifier with this use type and system in a resource). Thus the id for the resource below would be ‘92ZZRR’, and the url something like:

https://api.hip.digital.health.nz/fhir/Practitioner/92ZZRR

This design allows an implementer to retrieve a resource from the HPI and save it on their own system, but still be able to retrieve the original to check for updates. This can be done in 2 ways.


#### Read resource by id


Extract the value of the identifier where the value of the __use__ element is ‘official’, and use that as the id for a direct read from the server. 


http://api.hip.digital.health.nz/fhir/Practitioner/92ZZRR


#### Query resource

Use the identifier in a search query. 


Example: 

http://api.hip.digital.health.nz/fhir/Practitioner?identifier=https://standards.digital.health.nz/id/hpi\|92ZZRR


(Note that both system and value are included in the query, with values separated by a ‘\|’. When making the query, the ‘\|’ needs to be url-escaped)

This example will return a bundle of Practitioner resources with only a single entry (as the system enforces uniqueness of the HPI identifier). Other queries - eg name - may well return multiple instances.


### References between resources

References are directional - from a source to a target. 

The following example shows a reference to a Practitioner with the id of "92ZZRR"


``
"practitioner": {
"reference": "Practitioner/92ZZRR",
"display": "Dr Marcus welby"
  }
...



### Merging resource and Dormant identifiers

In some cases, a single entity may have been accidentally assigned multiple identifiers. When this is discovered to have occurred, one of the identifiers is deprecated and becomes a ‘dormant’ identifier, leaving the other as the active one. Both identifiers will appear in the active resource identifier list, with the dormant identifiers having a _use_ value of ‘old’ and the active having a _use_ value of ‘official’. 

When reading the resource, if the deprecated id is used, the resource returned will have the live id, but the identifiers will have both the live with a *use* value of ‘official’ and this dormant with a *use* value of ‘old’.)

For example, assume that there are 2 Practitioner resources exposed by the HPI, each with a single identifier. The id of the resource matches the identifier value.


```
{
  "resourceType":"Practitioner",
  "id" : "92ZZRR",
  "identifier" : [
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"92ZZRR","use":"official"}


  ]
… other data
}
```


(returned by GET [host]/Practitioner/92ZZRR)

And 


```
{
  "resourceType":"Practitioner",
  "id" : "96YYY",
  "identifier" : [
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"96YYY","use":"official"}


  ]… other data (may be different to 92ZZRR)

}
```


(returned by GET [host]/Practitioner/96YYY)

They are determined to be the same person, and the identifier 96YYY is deprecated (made dormant) in favour of 92ZZRR.

A GET call of GET [host]/Practitioner/92ZZRR) or GET [host]/Practitioner/96YYYY) will return the same response


```
{
  "resourceType":"Practitioner",
  "id" : "99ZZZZ",
  "identifier" : [
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"92ZZRR","use":"official"},
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"96YYY","use":"old"}


  ]
… other data

}
```




Resources that reference the Practitioner (such as the PractitionerRole resource) can use either id. For example, to return PractitionerRole resources for this Practitioner, either of the following queries will return the same set of PractitionerRole resources:

GET [host]/PractitionerResource?practitioner=92ZZRR

GET [host]/PractitionerResource?practitioner=96YYY



### Contained resources

Contained resources are where the referenced (target) resource is contained within the source resource.

When a resource contains a reference to another resource, the HPI server will not normally render the references as a contained resource, only the reference links themselves will be included in responses. The exception is PractitionerRole, here the server may return contained resources if requested to. This is an example of a request made for the referenced resources to be included

`https://api.hip-uat.digital.health.nz/fhir/hpi/v1/PractitionerRole?identifier=https://standards.digital.health.nz/nx/hpi-practitioner-role-id|R00000297&_include=PractitionerRole:practitioner&_include=PractitionerRole:organization&_include=PractitionerRole:location`



### HTTP Header Details

All requests for all resources must include an http header **userid** that uniquely identifies the individual initiating the request. Preferably the CPN of the user would be provided, if known, otherwise a user name that allows the authenticated organisation to identify the individual.

### Security
The HPI server uses the OAUTH2 Client Credentials flow for authentication and authorisation and complies with the SMART specification for backend services

The following scopes are supported

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Scope</th><th>Description</th> <th> </th></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/practitioner:read   </td><td> Read access to all Practitioner resources. </td><td> </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/practitioner:search </td><td> Search access to Practitioner resources, Practitioners tagged as confidential are excluded from the results. </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/practitioner:write  </td><td> Write access to all Practitioner resources. </td><td> </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/practitioner:admin  </td><td> Admin access to all Practitioner resources. </td><td><b>Allows access to confidential data.</b> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/location:read       </td><td> Read access to all Location resources.  </td><td> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/location:search    </td><td>Search access to all Location resources  </td><td> </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/location:write     </td><td> Write access to all Location resources. </td><td> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/location:admin    </td><td> Admin access to all Location resources.</td><td> <b>Allows access to confidential data.</b> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/organization:read  </td><td> Read access to all Organization resources. </td><td> </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/organization:search </td><td> Search access to all Organization resources </td><td> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/organization:write </td><td> Write access to all Organization resources. </td><td> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/organization:admin  </td><td> Admin access to all Organization resources.</td><td> <b>Allows access to confidential data.</b> </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/pracrole:read     </td><td> Read access to all Practitioner Role resources.</td><td> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/pracrole:search    </td><td> Search access to all active Practitioner Role resources, inactive roles are excluded from the results. </td><td> </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/pracrole:write    </td><td> Write access to all Practitioner Role resources.</td><td> </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/pracrole:admin    </td><td> Admin access to all Practitioner Role resources.</td><td> <b>Allows access to confidential data.</b></td></tr>
</table>


