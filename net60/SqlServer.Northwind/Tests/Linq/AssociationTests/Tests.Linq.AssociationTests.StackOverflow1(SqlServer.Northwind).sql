BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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

