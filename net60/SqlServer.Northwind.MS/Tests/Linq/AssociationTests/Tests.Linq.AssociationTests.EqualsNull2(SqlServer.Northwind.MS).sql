BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
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
		LEFT JOIN [Employees] [a_ReportsToEmployee] ON [employee].[ReportsTo] = [a_ReportsToEmployee].[EmployeeID]
WHERE
	[a_ReportsToEmployee].[EmployeeID] IS NOT NULL

