-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t].[Discontinued],
	[t].[ProductID],
	[t].[ProductName],
	[t].[SupplierID],
	[t].[CategoryID],
	[t].[QuantityPerUnit],
	[t].[UnitPrice],
	[t].[UnitsInStock],
	[t].[UnitsOnOrder],
	[t].[ReorderLevel]
FROM
	[Products] [t]
		LEFT JOIN FREETEXTTABLE([Categories], ([Description]), N'sweetest candy bread and dry meat') [c_1] ON [c_1].[KEY] = [t].[CategoryID]
ORDER BY
	[t].[ProductName] DESC

