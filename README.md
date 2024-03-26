USERS' REQUIREMENTS SPECIFICATION FOR DREAMHOME CASE STUDY

A.1 BRANCH USER VIEWS OF DREAMHOME  
A.1.1 Data Requirements 
Branches  
DreamHome has branch offices in cities throughout the United Kingdom. Each branch office is allocated members of staff, including a Manager, who manages the operations of the office. The data describing a branch office includes a unique branch number, address (street, city, and postcode), telephone numbers (up to a maximum of three), and the name of the member of staff who currently manages the office. Additional data is held on each Manager, which includes the date that the Manager assumed his or her position at the current branch office, and a monthly bonus payment based upon his or her performance in the property for rent market.  
Staff  
Members of staff with the role of Supervisor are responsible for the day-to-day activities of an allocated group of staff called Assistants (up to a maximum of 10, at any one time). Not all members of staff are assigned to a Supervisor. The data stored regarding each member of staff includes staff number, name, address, position, salary, name of Supervisor (where applicable), and the details of the branch office at which a member of staff is currently working. The staff number is unique across all branches of DreamHome.
Properties for rent  
Each branch office offers a range of properties for rent. The data stored for each property includes property number, address (street, city, postcode), type, number of rooms, monthly rent, and the details of the property owner. The property number is unique across all branch offices. The management of a property is assigned to a member of staff whenever it is rented out or requires to be rented out. A member of staff may manage a maximum of 100 properties for rent at any one time. When a given property is available for rent, the property details will be displayed on the DreamHome Web site and, when necessary , as advertisements in local and national newspapers.
Property owners  
The details of property owners are also stored. There are two main types of property owner: private owners and business owners. The data stored for private owners includes owner number, name, address, telephone number, email, and password. The data stored on business owners includes name of business, typeof business,address,telephonenumber,email,password,andcontact name. The password willallow owners access to parts of the DreamHome database using the Web.
Clients  
DreamHome refers to members of the public interested in renting property as clients. To become a client, a person must first register at a branch office of DreamHome. The data stored on clients includes client number, name, telephone number, email, preferred type of accommodation, and the maximum rent that the client is prepared to pay. Also stored is the name of the member of staff who processed the
1
registration, the date the client joined, and some details on the branch office at which the client registered. The client number is unique across all DreamHome branches.
Leases
When a property is rented out, a lease is drawn up between the client and the property. The data listed in detail on the lease includes lease number, client number, name and address, property number and address, monthly rent, method of payment, an indication of whether the deposit has been paid deposit (calculated as twice the monthly rent), duration of lease, and the start and end dates of the lease period.
Newspapers
When required, the details of properties for rent are advertised in local and national newspapers. The data stored includes the property number, address, type, number of rooms, rent, the date advertised, the name of the newspaper, and the cost to advertise. The data stored on each newspaper includes the newspaper name, address, telephone number, and contact name.
A.1.2 Transaction Requirements (Sample)
Data entry
Enter the details of a new branch (such as branch B003 in Glasgow).
Enter the details of a new member of staff at a branch (such as Ann Beech at branch B003).
Enter the details of a lease between a client and property (such as client Mike Ritchie renting out property number PG4 from the 10-May-12 to 9-May-13).
Enter the details of a property advertised in a newspaper (such as property number PG4 advertised in the Glasgow Daily newspaper on the 06-May-12).
Data update/deletion
Update/delete the details of a branch.
Update/delete the details of a member of staff at a branch.
Update/delete the details of a given lease at a given branch. Update/delete the details of a newspaper advertisement at a given branch.
Data queries
Examples of queries required by the Branch user views:
a) List the details of branches in a given city.
b) Identify the total number of branches in each city.
c) List the name, position, and salary of staff at a given branch, ordered by staff name. d) Identify the total number of staff and the sum of their salaries.
e) Identify the total number of staff in each position at branches in Glasgow.
f) List the name of each Manager at each branch, ordered by branch address.
g) List the names of staff supervised by a named Supervisor.
h) List the property number, address, type, and rent of all properties in Glasgow, ordered by rental
amount.
i) List the details of properties for rent managed by a named member of staff.
j) Identify the total number of properties assigned to each member of staff at a given branch.
k) List the details of properties provided by business owners at a given branch.
l) Identify the total number of properties of each type at all branches.
m) Identifythedetailsofprivatepropertyownersthatprovidemorethanonepropertyforrent.
n) Identify flats with at least three rooms and with a monthly rent no higher than $500 in Aberdeen.
2

o) List the number, name, and telephone number of clients and their property preferences at a given branch.
p) Identify the properties that have been advertised more than the average number of times.
q) List the details of leases due to expire next month at a given branch.
r) List the total number of leases with rental periods that are less than one year at branches in London.
s) List the total possible daily rental for property at each branch, ordered by branch number.
3

A.2 STAFF USER VIEWS OF DREAMHOME
A.2.1 Data Requirements
Staff
The data required on members of staff includes staff number, name (first and last name), position, gende r, date of birth (DOB), and name of the Supervisor (where appropriate). Members of staff in the position of Supervisor supervise an allocated group of staff (up to a maximum of 10 at any one time).
Properties for rent
The data stored on property for rent includes property number, address (street, city, and postcode), type, number of rooms, monthly rent, and the details of the property owner. The monthly rent for a property is reviewed annually. Most of the properties rented out by DreamHome are apartments (or flats). The management of a property is assigned to a member of staff whenever it is rented out or ready to be rented out. A member of staff may manage a maximum of 100 properties for rent at any one time.
Property owners
There are two main types of property owner: private owners and business owners. The data stored on private owners includes owner number, name (first and last name), address, telephone number, email, and password. The data stored on business owners includes owner number, name of business, business type, address, telephone number, email, password, and contact name.
Clients
When a prospective client registers with DreamHome, the data stored includes the client number, name (first and last name), telephone number, email, and some data on the desired property, including the preferred type of accommodation and the maximum rent that the client is prepared to pay. Also stored is the name of the member of staff who registered the new client.
Property viewings
Clients may request to view property. The data stored includes client number, name and telephone number, property number and address, date the client viewed the property, and any comments made by the client regarding the suitability of the property. A client may view the same property only once on a given date.
Leases
Once a client finds a suitable property, a lease is drawn up. The information on the lease includes lease number, client number and name, property number, address, type and number of rooms, monthly rent, method of payment, deposit (calculated as twice the monthly rent), whether the deposit is paid, the start and end dates of the rental period, and the duration of the lease. The lease number is unique across all DreamHome branches. A client may hold a lease associated with a given property from a minimum of three months to a maximum of 1 year.
A.2.2 Transaction Requirements (Sample)
Data entry
Enter the details for a new property and the owner (such as details of property number PG4 in Glasgow owned by Tina Murphy).
Enter the details of a new client (such as details of Mike Ritchie).
4

Enter the details of a client viewing a property (such as client Mike Ritchie viewing property number PG4 i n Glasgow on the 06-May-12).
Enter the details of a lease between a client and property (such as client Mike Ritchie renting out property number PG4 from the 10-May-12 to 9-May-13).

Data queries
Examples of queries required by the Staff user views:
a) List details of staff supervised by a named Supervisor at the branch.
b) List details of all Assistants alphabetically by name at the branch.
c) List the details of property (including the rental deposit) available for rent at the branch, along with
the owner's details.
d) List the details of properties managed by a named member of staff at the branch.
e) List the clients registering at the branch and the names of the members of staff who registered the
clients.
f) Identify properties located in Glasgow with rents no higher than $450.
g) Identify the name and telephone number of an owner of a given property.
h) List the details of comments made by clients viewing a given property.
i) Display the names and phone numbers of clients who have viewed a given property but not supplied
comments.
j) Display the details of a lease between a named client and a given property.
k) Identify the leases due to expire next month at the branch.
l) List the details of properties that have not been rented out for more than three months.
m) Producealistofclientswhosepreferencesmatchaparticularproperty.
