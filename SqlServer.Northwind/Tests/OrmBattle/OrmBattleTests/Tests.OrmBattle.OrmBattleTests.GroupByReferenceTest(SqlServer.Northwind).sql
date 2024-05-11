BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

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
				INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID]
	) [m_1]
		INNER JOIN [Orders] [d] ON [m_1].[CustomerID] = (
			SELECT
				[a_Customer_1].[CustomerID]
			FROM
				[Customers] [a_Customer_1]
			WHERE
				[d].[CustomerID] = [a_Customer_1].[CustomerID]
		)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[a_Customer].[CustomerID]
FROM
	[Orders] [t1]
		INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID]
GROUP BY
	[a_Customer].[CustomerID]

