BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[o].[OrderID],
	[o].[CustomerID],
	[o].[EmployeeID],
	[o].[OrderDate],
	[o].[RequiredDate],
	[o].[ShippedDate],
	[o].[ShipVia],
	[o].[Freight],
	[o].[ShipName],
	[o].[ShipAddress],
	[o].[ShipCity],
	[o].[ShipRegion],
	[o].[ShipPostalCode],
	[o].[ShipCountry]
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
		LEFT JOIN [Employees] [a_Employee] ON [o].[EmployeeID] = [a_Employee].[EmployeeID]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Customers] [c_1]
		WHERE
			[c_1].[CustomerID] = [a_Customer].[CustomerID] AND
			[c_1].[CompanyName] NOT LIKE N'A%' ESCAPE N'~'
	) OR
	NOT EXISTS(
		SELECT
			*
		FROM
			[Employees] [e]
		WHERE
			[e].[EmployeeID] = [a_Employee].[EmployeeID] AND [e].[FirstName] NOT LIKE N'%t' ESCAPE N'~'
	)

