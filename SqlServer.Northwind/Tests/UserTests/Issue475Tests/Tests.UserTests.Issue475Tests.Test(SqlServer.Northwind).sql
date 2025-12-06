-- SqlServer.Northwind SqlServer.2019

SELECT
	[e].[EmployeeID],
	[e].[LastName],
	[e].[FirstName],
	[e].[Title],
	[e].[TitleOfCourtesy],
	[e].[BirthDate],
	[e].[HireDate],
	[e].[Address],
	[e].[City],
	[e].[Region],
	[e].[PostalCode],
	[e].[Country],
	[e].[HomePhone],
	[e].[Extension],
	[e].[Photo],
	[e].[Notes],
	[e].[ReportsTo],
	[e].[PhotoPath]
FROM
	[Employees] [e]

-- SqlServer.Northwind SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[e].[EmployeeID],
	[e].[LastName],
	[e].[FirstName],
	[e].[Title],
	[e].[TitleOfCourtesy],
	[e].[BirthDate],
	[e].[HireDate],
	[e].[Address],
	[e].[City],
	[e].[Region],
	[e].[PostalCode],
	[e].[Country],
	[e].[HomePhone],
	[e].[Extension],
	[e].[Photo],
	[e].[Notes],
	[e].[ReportsTo],
	[e].[PhotoPath]
FROM
	[Employees] [e]

