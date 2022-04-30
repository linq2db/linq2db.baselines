BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[o].[ShipCountry],
	[o].[ShipPostalCode],
	[o].[ShipRegion],
	[o].[ShipCity],
	[o].[ShipAddress],
	[o].[ShipName],
	[o].[Freight],
	[o].[ShipVia],
	[o].[ShippedDate],
	[o].[RequiredDate],
	[o].[OrderDate],
	[o].[EmployeeID],
	[o].[CustomerID],
	[o].[OrderID]
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
		LEFT JOIN [Employees] [a_Employee] ON [o].[EmployeeID] = [a_Employee].[EmployeeID]
WHERE
	(NOT EXISTS(
		SELECT
			*
		FROM
			[Customers] [c_1]
		WHERE
			([c_1].[CustomerID] = [a_Customer].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL) AND
			[c_1].[CompanyName] NOT LIKE 'A%' ESCAPE '~'
	) OR NOT EXISTS(
		SELECT
			*
		FROM
			[Employees] [e]
		WHERE
			[e].[EmployeeID] = [a_Employee].[EmployeeID] AND [e].[FirstName] NOT LIKE '%t' ESCAPE '~'
	))

