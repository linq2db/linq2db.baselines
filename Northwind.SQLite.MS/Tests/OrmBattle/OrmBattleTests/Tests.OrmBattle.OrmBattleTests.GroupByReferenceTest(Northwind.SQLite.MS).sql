BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[CustomerID],
	[d].[OrderID],
	[d].[CustomerID],
	[d].[EmployeeID],
	[d].[OrderDate],
	[d].[RequiredDate],
	[d].[ShippedDate],
	[d].[ShipVia],
	[d].[Freight],
	[d].[ShipName],
	[d].[ShipAddress],
	[d].[ShipCity],
	[d].[ShipRegion],
	[d].[ShipPostalCode],
	[d].[ShipCountry]
FROM
	(
		SELECT DISTINCT
			[a_Customer].[CustomerID]
		FROM
			[Orders] [t1]
				INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID] AND [t1].[CustomerID] IS NOT NULL
	) [m_1]
		INNER JOIN ([Orders] [d]
			INNER JOIN [Customers] [a_Customer_1] ON [d].[CustomerID] = [a_Customer_1].[CustomerID] AND [d].[CustomerID] IS NOT NULL)
		ON [m_1].[CustomerID] = [a_Customer_1].[CustomerID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_Customer].[CustomerID]
FROM
	[Orders] [t1]
		INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID] AND [t1].[CustomerID] IS NOT NULL
GROUP BY
	[a_Customer].[CustomerID]

