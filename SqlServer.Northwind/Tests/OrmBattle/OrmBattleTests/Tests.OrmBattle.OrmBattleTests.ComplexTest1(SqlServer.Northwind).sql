-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[ProductID],
	[m_1].[Item1],
	[d_1].[Discontinued],
	[d_1].[ProductID],
	[d_1].[ProductName],
	[d_1].[SupplierID],
	[d_1].[CategoryID],
	[d_1].[QuantityPerUnit],
	[d_1].[UnitPrice],
	[d_1].[UnitsInStock],
	[d_1].[UnitsOnOrder],
	[d_1].[ReorderLevel]
FROM
	(
		SELECT DISTINCT
			[d].[ProductID],
			[supplier].[SupplierID] as [Item1]
		FROM
			[Suppliers] [supplier]
				CROSS JOIN [Products] [d]
	) [m_1]
		INNER JOIN [Products] [d_1]
			LEFT JOIN [Suppliers] [a_Supplier] ON [d_1].[SupplierID] = [a_Supplier].[SupplierID]
		ON [d_1].[ProductID] = [m_1].[ProductID] AND [a_Supplier].[SupplierID] = [m_1].[Item1]

-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[SupplierID],
	[d].[ProductID]
FROM
	[Suppliers] [m_1]
		CROSS JOIN [Products] [d]

-- SqlServer.Northwind SqlServer.2019

SELECT
	[supplier].[SupplierID]
FROM
	[Suppliers] [supplier]

