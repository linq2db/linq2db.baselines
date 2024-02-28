BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
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
			Count(*)
		FROM
			[Employees] [t1]
		WHERE
			[employee].[EmployeeID] = [t1].[ReportsTo]
	) > 0
LIMIT @take

