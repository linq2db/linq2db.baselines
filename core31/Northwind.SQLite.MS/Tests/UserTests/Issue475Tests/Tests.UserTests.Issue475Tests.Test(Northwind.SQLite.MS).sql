BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

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
LIMIT @take

