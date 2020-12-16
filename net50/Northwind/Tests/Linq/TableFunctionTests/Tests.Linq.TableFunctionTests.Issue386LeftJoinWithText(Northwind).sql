BeforeExecute
-- Northwind SqlServer.2017
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'sweetest candy bread and dry meat'

SELECT
	[t].[ProductID],
	[t].[ProductName],
	[t].[SupplierID],
	[t].[CategoryID],
	[t].[QuantityPerUnit],
	[t].[UnitPrice],
	[t].[UnitsInStock],
	[t].[UnitsOnOrder],
	[t].[ReorderLevel],
	[t].[Discontinued]
FROM
	[Products] [t]
		LEFT JOIN FREETEXTTABLE([Categories], ([Description]), @p_1) [f] ON [f].[KEY] = [t].[CategoryID]
ORDER BY
	[t].[ProductName] DESC

