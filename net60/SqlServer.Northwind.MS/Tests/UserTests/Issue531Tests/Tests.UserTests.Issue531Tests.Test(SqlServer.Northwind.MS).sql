BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @ext NVarChar(4000) -- String
SET     @ext = N'5467'

SELECT
	[e].[PhotoPath],
	[e].[ReportsTo],
	[e].[Notes],
	[e].[Photo],
	[e].[Extension],
	[e].[HomePhone],
	[e].[Country],
	[e].[PostalCode],
	[e].[Region],
	[e].[City],
	[e].[Address],
	[e].[HireDate],
	[e].[BirthDate],
	[e].[TitleOfCourtesy],
	[e].[Title],
	[e].[FirstName],
	[e].[LastName],
	[e].[EmployeeID]
FROM
	[Employees] [e]
WHERE
	[e].[Extension] = @ext

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[e].[PhotoPath],
	[e].[ReportsTo],
	[e].[Notes],
	[e].[Photo],
	[e].[Extension],
	[e].[HomePhone],
	[e].[Country],
	[e].[PostalCode],
	[e].[Region],
	[e].[City],
	[e].[Address],
	[e].[HireDate],
	[e].[BirthDate],
	[e].[TitleOfCourtesy],
	[e].[Title],
	[e].[FirstName],
	[e].[LastName],
	[e].[EmployeeID]
FROM
	[Employees] [e]
WHERE
	[e].[FirstName] IN (N'Nancy', N'Andrew')

