BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @ext NVarChar(4) -- String
SET     @ext = '5467'

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
-- Northwind.SQLite SQLite.Classic SQLite

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
	[e].[FirstName] IN ('Nancy', 'Andrew')

