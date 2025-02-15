

### Who can apply for access?

#### To the test environment:
All organisations and software vendors will be given access to all the HPI api operations in the HIP Compliance environment for testing and training after
completing the on-boarding process described below.

#### To the production environment:
Access to **HPI Organisation and HPI Facility Search and Get** interactions is available to all health providers, responsible authorities and organisations who
provide supporting services to health providers and responsible authorities.

(Definitions: A health provider means a person or an organisation that provides, or arranges the provision of, personal health services or public health
services-reference section 2, Health Act 1956. A responsible authority is an organisation responsible for the registration of practitioners-reference section 5,
Health Practitioners Competence Assurance Act 2003).

Health providers and responsible authorities with existing HPI Data Access and Provision Agreements will be given access to Get and Search Practitioner under those
agreements. This includes District Health Boards, ACC and Laboratories.

Health providers without an agreement wanting access to **Get and Search Practitioner** and any organisations wanting access to **PractitionerRole Get, Search,
Add and Update** interactions will need to apply to the Ministry of Health. The application will be assessed by the Ministry of Health Data Governance team and if
granted an HPI Data Access Agreement must be signed prior to credentials being issued to production.


### On-boarding

1. To apply for access to the HPI test environment complete and submit the [Register your Interest / Access a Test Environment](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/41) form.
 
2. You may be requested to complete an additional security questionnaire.

3. The Ministry will issue credentials for the testing endpoint.

4. Submit the results of the compliance tests using the [Apply for Product Certification](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/34) form.

4. Submit the results of the compliance tests below to [integration@health.govt.nz](mailto:integration@health.govt.nz)

5. The Ministry will issue a compliance test report.

6. Each organisation using your application with HPI integrated services must apply individually for access to the production environment by completing the [Become a Registered User of a Certified Product](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/43) form.


### Compliance testing

Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details <br />
  a. Organisation Name <br />
  b. Application name and version <br />
  c. HPI IG Version <br />
  d. Test Script version <br />
  e. Testing start date and time and end date and time <br />
  f. Tester name and contact details <br />
  g. List of interactions included in your integration (eg Get Practitioner, Get Location, Search Location)
   
2. For each test supply screen shots of: <br />
  a. the input data as entered in the integrating system (“the system”) <br />
  b. any warnings or error messages presented by the system <br />
  c. the confirmation or result of the request presented by the system <br />


### Tests

<h3>HPI Organization GET</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr>
<td>HPI-O-Get-1</td>
<td>System can supply a unique userID for each end user initiating requests</td>
<td>Get GZZ999-J <br /> Get GZZ998-G</td>
<td>userID varies for each request</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Get-2</td>
<td>System behaves appropriately when a dormant HPI-OrgID is requested</td>
<td>GZZ995-A</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Get-3</td>
<td>System behaves appropriately when the organisation requested is no longer active</td>
<td>GZZ903-C</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td>
</tr>
</table>

<h3>HPI Organization SEARCH</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr>
<td>HPI-O-Search-1</td>
<td>Minimum search criteria are included</td>
<td>Search for ‘New Zealand Army’ <br /> Search for ‘Hosptial Pharmacy’</td>
<td>Organisation name is supplied and returns results</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Search-2</td>
<td>Search results are presented to user in score order</td>
<td> </td>
<td>Results show highest scoring results first</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Search-3</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Search for ‘TryNSave Pharmacy’</td>
<td>System allows user to view aliases before selecting a result <br /> Name= Discount Pharmaceuticals Limited <br /> Alias= TryNSave Discount Pharmacy <br /> HPI-O= GZZ869-G</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Search-4</td>
<td>System can search using the NZBN identifier</td>
<td>NZBN= 9999999999057</td>
<td>HPI details for GZZ920-C are presented</td>
<td>optional</td>
</tr>
</table>


<h3>HPI Location/Facility GET</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-L-Get-1</td>
<td>System can supply a unique userID for each end user initiating requests</td>
<td>FZZ999-B <br /> FZZ997-J</td>
<td>userID varies for each request</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-2</td>
<td>System behaves appropriately when a dormant HPI-OrgID is requested</td>
<td>FZZ997-J</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-3</td>
<td>System behaves appropriately when the location requested is no longer active</td>
<td>FZZ754-E <br /> FZZ753-C</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-4</td>
<td>System behaves appropriately when more than one contact point is present</td>
<td>FZZ968-B</td>
<td>Where appropriate all contact points are displayed to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-5</td>
<td>System behaves appropriately when using the contact point rank</td>
<td>tbd</td>
<td>When rank is present it is presented to user in an meaningful way</td>
<td></td></tr>

<tr><td>HPI-L-Get-6</td>
<td>System presents the address parts appropriately</td>
<td>FZZ961-K <br /> FZZ960-H <br /> FZZ959-A <br /> FZZ958-K <br /> FZZ957-H</td>
<td>All address formats are displayed appropriately</td>
<td></td></tr>
</table>

<h3>HPI Location/Facility Search</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-L-Search-1</td>
<td>Minimum search criteria are included</td>
<td>Name = “Red Diamond”</td>
<td>Facility name is supplied and returns results</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Search-2</td>
<td>Search results are presented to user in score order</td>
<td></td>
<td>Results show highest scoring results first</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Search-3</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Name = “Pukekohe Diamond Doctors”</td>
<td>System allows user to view aliases before selecting a result <br /> Name= Pukekohe Diamond Doctors <br /> Alias= Pukekohe Diamond Doctors <br /> HPI = F=FZZ857-D</td>
<td>mandatory</td></tr>
</table>

<h3>HPI Practitioner GET</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-P-Get-4</td>
<td>System can supply a unique userID for each end user initiating requests</td>
<td>92ZZRR <br /> 92ZZRE</td>
<td>userID varies for each request</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-5</td>
<td>System can handle a response when a dormant CPN is requested</td>
<td>tbd</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-6</td>
<td>System can handle a response when practitioner has <br /> only a surname; <br /> only a given name; <br /> multiple names</td>
<td>Tbd (only surname, only given name) <br /> 99ZZVM <br /> 99ZZVA</td>
<td>System does not error <br /> System returns all name parts when present <br /> Order of name parts is clear to the user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-7</td>
<td>System behaves appropriately when the requested practitioner has more than one registration</td>
<td>95ZZEJ <br /> 98ZZNY <br /> 95ZZQE <br /> 98ZZQJ <br /> 95ZZDR <br /> 95ZZDE</td>
<td>The appropriate registration is used or both registrations are presented</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-8</td>
<td>System behaves appropriately when the requested practitioner has more than Scope of Practice</td>
<td>98ZZNY <br /> 90ZZJF <br /> 98ZZNM</td>
<td>System returns appropriate messaging to user</td>
<td>optional</td></tr>

<tr><td>HPI-P-Get-9</td>
<td>System behaves appropriately when the requested practitioner does not have a registration</td>
<td>90ZZLC <br /> 90ZZLP</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-10</td>
<td>System behaves appropriately for all registration statuses</td>
<td>98ZZYU <br /> 98ZZYH <br /> 98ZZXQ <br /> 98ZZXD</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-11</td>
<td>System clearly distinguishes between educational qualifications and registration details</td>
<td>97ZZYP <br /> 94ZZXF <br /> 97ZZYC <br /> 94ZZWZ <br /> 97ZZXW</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-12</td>
<td>|System behaves appropriately when confidentiality settings have been set for a practitioner</td>
<td>93ZZRW <br /> 96ZZSG <br /> 98ZZWL</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-13</td>
<td>System behaves appropriately when practitioner record has a date of death</td>
<td>90ZZLP <br /> 90ZZMG <br /> 92ZZSJ <br /> 92ZZRR</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>
</table>

<h3>HPI Practitioner Search</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-P-Search-1</td>
<td>System can search using the practitioner’s registration identifier eg Medical Council number, Nursing Council number</td>
<td>Medical Council <br /> Medical Council #= 99478 <br /> <br /> Nursing Council <br /> Nursing Council #= 961049 <br /> <br /> Medical Sciences Council <br /> Medical Sciences Council #= 30-91697</td>
<td>System retrieves record successfully</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-2</td>
<td>Minimum search criteria are included</td>
<td>Name = Walter O’Reilly <br /> Date of birth=24/05/1943 <br /> Name = Brian Hunnicutt <br /> Date of birth= 6/02/1939</td>
<td>A name and date of birth are provided in the request</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-3</td>
<td>Search results are presented to user in score order</td>
<td></td>
<td>Results show highest scoring results first</td>
<td>mandatory</td></tr>
</table>

*NOTE: Access is restricted to Practitioner Search by name and date of birth – prior permission should be sort from the Integration team before developing this functionality into an application


<h3>HPI PractitionerRole Get</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Get-4</td>
<td>System can Get a record using the PractitionerRoleID and supply a unique userID for each end user initiating requests</td>
<td>tbd</td>
<td>userID varies for each request</td>
<td>mandatory</td></tr>
</table>

<h3>HPI PractitionerRole Search</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Search-1</td>
<td>Minimum search criteria are included</td>
<td>tbd</td>
<td>CPN is always provided</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-2</td>
<td>System behaves appropriately when the record contains a role that has ended</td>
<td>tbd</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-3</td>
<td>System behaves appropriately where a role does not include an organization ID</td>
<td>tbd</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-4</td>
<td>System behaves appropriately where a role does not include a role code</td>
<td>tbd</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-5</td>
<td>System behaves appropriately when confidentiality settings have been set for a practitioner</td>
<td>tbd</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-6</td>
<td>System behaves appropriately when the record contains one or more contact points</td>
<td>tbd</td>
<td>Where appropriate all contact points are displayed to user</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Search-7</td>
<td>System behaves appropriately when using the contact point rank</td>
<td>tbd</td>
<td>When rank is present it is presented to user in an meaningful way</td>
<td>optional</td></tr>
</table>


<h3>HPI PractitionerRole Add</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Add-1</td>
<td>Minimum add criteria are provided (CPN and facility)</td>
<td>Select HPI-CPN from test IDs <br /> Select HPI-FacID from the test IDs</td>
<td>PractitionerRole record is added</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Add-2</td>
<td>System can supply all possible PractitionerRole attributes</td>
<td>Add a record with location, organization, role code,  multiple contact points and a period</td>
<td>PractitionerRole record is added</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Add-3</td>
<td>System can provide the confidentiality settings</td>
<td></td>
<td>PractitionerRole record is added with appropriate confidentiality settings</td>
<td>optional</td></tr>
</table>


<h3>HPI PractitionerRole Update</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Update</td>
<td>System can end a PractitionerRole record that it has created</td>
<td>Use role created in HPI-PR-Add-1 test</td>
<td>CPN is always provided</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can add a contactpoint</td>
<td>Use role created in HPI-PR-Add-1 to 3</td>
<td>Contactpoint is added to the record</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can remove a contactpoint</td>
<td>Use role created in HPI-PR-Add-1 to 3</td>
<td>Contactpoint is removed from the record</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can update the rank on a contactpoint</td>
<td>Use role created in HPI-PR-Add-1 to 3</td>
<td>Rank is updated on a contactpoint</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can provide the confidentiality settings</td>
<td>Use role created in HPI-PR-Add-1 to 3</td>
<td>Confidentiality settings are updated on the record</td>
<td>optional</td></tr>
</table>


<h3>Security and Audit Assessment</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Mandatory</th></tr>

<tr><td>Security 1</td>
<td>Credentials match those issued to the testing organisation</td>
<td>Mandatory</td></tr>

<tr><td>Security 2</td>
<td>Sending user ID is an end user ID or a CPN</td>
<td>Mandatory</td></tr>

<tr><td>Security 3</td>
<td>Sending user ID changes when different end users are initiating the request</td>
<td>Mandatory</td></tr>
</table>

All test messages will be assessed for the above security and audit requirements
