-- SqlServer.Northwind SqlServer.2019
DECLARE @term NVarChar(4000) -- String
SET     @term = N'sweetest candy bread and dry meat'

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
		INNER JOIN FREETEXTTABLE([Categories], ([Description]), @term) [c_1] ON [t].[CategoryID] = [c_1].[KEY]
ORDER BY
	[t].[ProductName] DESC

