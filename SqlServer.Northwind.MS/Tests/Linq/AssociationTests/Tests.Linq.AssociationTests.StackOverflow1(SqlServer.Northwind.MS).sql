BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT TOP (1)
	[employee].[EmployeeID],
	[employee].[LastName],
	[employee].[FirstName],
	[employee].[Title],
	[employee].[TitleOfCourtesy],
	[employee].[BirthDate],
	[employee].[HireDate],
	[employee].[Address],
	[employee].[City],
	[employee].[Region],
	[employee].[PostalCode],
	[employee].[Country],
	[employee].[HomePhone],
	[employee].[Extension],
	[employee].[Photo],
	[employee].[Notes],
	[employee].[ReportsTo],
	[employee].[PhotoPath]
FROM
	[Employees] [employee]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Employees] [a_Employees]
		WHERE
			[employee].[EmployeeID] = [a_Employees].[ReportsTo]
	) > 0

