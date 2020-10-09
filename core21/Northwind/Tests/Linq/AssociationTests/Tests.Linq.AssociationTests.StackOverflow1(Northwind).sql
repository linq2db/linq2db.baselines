BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	[t1].[PhotoPath], 
	[t1].[ReportsTo], 
	[t1].[Notes], 
	[t1].[Photo], 
	[t1].[Extension], 
	[t1].[HomePhone], 
	[t1].[Country], 
	[t1].[PostalCode], 
	[t1].[Region], 
	[t1].[City], 
	[t1].[Address], 
	[t1].[HireDate], 
	[t1].[BirthDate], 
	[t1].[TitleOfCourtesy], 
	[t1].[Title], 
	[t1].[FirstName], 
	[t1].[LastName], 
	[t1].[EmployeeID]
FROM
	[Employees] [t1]

BeforeExecute
-- Northwind SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[employee].[PhotoPath], 
	[employee].[ReportsTo], 
	[employee].[Notes], 
	[employee].[Photo], 
	[employee].[Extension], 
	[employee].[HomePhone], 
	[employee].[Country], 
	[employee].[PostalCode], 
	[employee].[Region], 
	[employee].[City], 
	[employee].[Address], 
	[employee].[HireDate], 
	[employee].[BirthDate], 
	[employee].[TitleOfCourtesy], 
	[employee].[Title], 
	[employee].[FirstName], 
	[employee].[LastName], 
	[employee].[EmployeeID]
FROM
	[Employees] [employee]
WHERE
	(
		SELECT 
			Count(*)
		FROM
			[Employees] [t1]
		WHERE
			[employee].[EmployeeID] = [t1].[ReportsTo]
	) > 0

