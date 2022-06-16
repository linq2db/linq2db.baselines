BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Employees] [t1]
		WHERE
			[employee].[EmployeeID] = [t1].[ReportsTo]
	) > 0
LIMIT 1

