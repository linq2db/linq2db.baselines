BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT TOP (1)
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

