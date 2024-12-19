BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[Key_1],
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
			IIF([g_1].[Freight] > 50, IIF([g_1].[Freight] > 100, N'expensive', N'average'), N'cheap') as [Key_1]
		FROM
			[Orders] [g_1]
	) [m_1]
		INNER JOIN [Orders] [d] ON [m_1].[Key_1] = IIF([d].[Freight] > 50, IIF([d].[Freight] > 100, N'expensive', N'average'), N'cheap')

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			IIF([g_1].[Freight] > 50, IIF([g_1].[Freight] > 100, N'expensive', N'average'), N'cheap') as [Key_1]
		FROM
			[Orders] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

