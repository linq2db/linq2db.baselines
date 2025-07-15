BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @ext NVarChar(4000) -- String
SET     @ext = N'5467'

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
WHERE
	[e].[Extension] = @ext

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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
WHERE
	[e].[FirstName] IN (N'Nancy', N'Andrew')

