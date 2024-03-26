Use ACRES; 

-- Question 1
SELECT c.CarID, c.LPlate, c.CarClassID 
FROM Car C, Car r
WHERE c.Make = 'Toyota' 
AND c.CarID = r.CarID
ORDER BY CarID ASC;

-- Question 2
SELECT DISTINCT DLicenseNum 
FROM Rental
WHERE FromDate >=  '2022/05/01' 
AND ToDate <= '2022/06/30'; 

-- Question 3
SELECT CarID, ROUND(AVG(DATEDIFF(ToDate, FromDate))) AS AverageRentalDays
FROM Rental
GROUP BY CarID
ORDER BY AverageRentalDays DESC
LIMIT 5;

-- Question 4
SELECT RentalID, (RetOdom - IniOdom) AS Distance
FROM Rental
WHERE FromDate >= '2022/05/01'
AND ToDate <= '2022/05/31'
AND FromLoc != ToLoc
ORDER BY (RetOdom - IniOdom) DESC;


-- Question 5
SELECT DISTINCT CarID, COUNT(RentalID) AS NumberOfRentals
FROM Rental
WHERE ToLoc = 'AID229'
GROUP BY CarID
ORDER BY COUNT(RentalID) DESC;

-- Question 6
SELECT Customer.DLicenseNum, FName, LName, PhoneNum
FROM Person, Customer
WHERE Person.DLicenseNum = Customer.DLicenseNum
AND (FName LIKE '%m%' OR FName LIKE '%M%')
ORDER BY DLicenseNum ASC;

-- Question 7
SELECT CarID, COUNT(*) AS NumberOfRentals
FROM Rental
GROUP BY CarID
ORDER BY NumberOfRentals DESC
LIMIT 5;

-- Question 8
SELECT e.DLicenseNum, CONCAT(p.FName, ' ', p.MName, ' ', p.LName) AS FullName, WorkLoc
FROM Person p, Employee e
WHERE e.EmpType ='manager'
AND e.DLicenseNum = p.DLicenseNum
ORDER BY DLicenseNum ASC;

-- Question 9
SELECT c.CarID, a.City
FROM Car c, Address a
WHERE c.CarLoc = a.AddressID
AND c.Make = 'Tesla' 
AND c.CarClassID = 'l'
ORDER BY CarID ASC;


-- Question 10
SELECT a.City, 
COUNT(CASE WHEN e.EmpType IS NULL THEN 1 END) AS NumberOfCustomers, 
COUNT(CASE WHEN e.EmpType IS NOT NULL THEN 1 END) AS NumberOfEmployees
FROM Address a, Person p 
LEFT JOIN Employee e ON  p.DLicenseNum = e.DLicenseNum 
WHERE a.AddressID = p.AddressID 
GROUP BY a.City
ORDER BY a.City ASC;


-- Question 11
SELECT p.DLicenseNum, a.City AS AddressCity, w.City AS WorkCity
FROM Person p
INNER JOIN Address a ON p.AddressID = a.AddressID 
INNER JOIN Employee e ON p.DLicenseNum = e.DLicenseNum 
INNER JOIN Address w ON e.WorkLoc = w.AddressID 
WHERE a.City != w.City
ORDER BY p.DLicenseNum ASC
LIMIT 5;


-- Question 12
SELECT e.DLicenseNum, p.FName, p.LName, MAX(r.FromDate) AS LatestRentalDate
FROM Person p
INNER JOIN Employee e ON p.DLicenseNum = e.DLicenseNum
LEFT JOIN Rental r ON e.DLicenseNum = r.DLicenseNum
LEFT JOIN Address a ON e.WorkLoc = a.AddressID
WHERE a.City = 'Sydney'
GROUP BY e.DLicenseNum;


-- Question 13
SELECT ROUND((SUM(f.City != t.City) / COUNT(*)) * 100, 2) AS CrossCityPercent #cannot use SUM as it is for non-null value
FROM Rental r
INNER JOIN address f ON r.FromLoc = f.AddressID
INNER JOIN address t ON r.ToLoc = t.AddressID;


-- Question 14
SELECT r.RentalID, e.DLicenseNum, (r.RetOdom - r.IniOdom) AS RentalDistance
FROM Rental r
INNER JOIN Employee e ON r.DLicenseNum = e.DLicenseNum
WHERE e.EmpType = 'clerk' 
AND DATEDIFF(R.ToDate, R.FromDate) < 14
ORDER BY RentalDistance DESC;

-- Question 15
SELECT c.CarClassID, AVG(DATEDIFF(r.ToDate, r.FromDate)) AS AvgRentalDuration
FROM Car c
INNER JOIN Rental r ON c.CarID = r.CarID
WHERE r.ToDate != r.FromDate
GROUP BY c.CarClassID
ORDER BY AvgRentalDuration ASC;

-- Question 16
SELECT CONCAT(p.FName, ' ', p.MName, ' ', p.LName) AS FullName, 
COUNT(*) AS LuxuryRentalCount
FROM Person p 
INNER JOIN Rental r ON p.DLicenseNum = r.DLicenseNum
INNER JOIN Car c ON r.CarID = c.CarID
WHERE c.CarClassID = 'l'
	AND p.DLicenseNum NOT IN (
		SELECT p.DLicenseNum 
        FROM Person p
        INNER JOIN Rental r ON p.DLicenseNum = r.DLicenseNum
        INNER JOIN Car c ON r.CarID = c.CarID
        WHERE c.CarClassID != 'l'
	)
GROUP BY p.DLicenseNum
ORDER BY LuxuryRentalCount ASC;


-- Question 17
SELECT CONCAT(p.FName, ' ', p.MName, ' ', p.LName) AS EmployeeName,
r.CarID, COUNT(*)RentalCount
FROM Person p
INNER JOIN Rental r ON p.DLicenseNum = r.DLicenseNum
INNER JOIN Employee e ON p.DLicenseNum = e.DLicenseNum
GROUP BY EmployeeName, r.CarID
HAVING COUNT(*) >= 2
ORDER BY EmployeeName ASC;



