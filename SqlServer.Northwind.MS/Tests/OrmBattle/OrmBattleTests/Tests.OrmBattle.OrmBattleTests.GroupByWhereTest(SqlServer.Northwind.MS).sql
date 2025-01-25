BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[m_1].[OrderDate],
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
			[t1].[OrderDate]
		FROM
			(
				SELECT
					[g_1].[OrderDate]
				FROM
					[Orders] [g_1]
				GROUP BY
					[g_1].[OrderDate]
				HAVING
					COUNT(*) > 5
			) [t1]
	) [m_1]
		INNER JOIN [Orders] [d] ON ([m_1].[OrderDate] = [d].[OrderDate] OR [m_1].[OrderDate] IS NULL AND [d].[OrderDate] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[g_1].[OrderDate]
FROM
	[Orders] [g_1]
GROUP BY
	[g_1].[OrderDate]
HAVING
	COUNT(*) > 5

