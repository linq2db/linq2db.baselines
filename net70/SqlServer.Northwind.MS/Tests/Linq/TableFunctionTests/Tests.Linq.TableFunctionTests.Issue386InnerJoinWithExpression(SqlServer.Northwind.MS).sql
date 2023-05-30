BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'sweetest candy bread and dry meat'

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
		INNER JOIN FREETEXTTABLE([Categories], ([Description]), @p) [c_1] ON [t].[CategoryID] = [c_1].[KEY]
ORDER BY
	[t].[ProductName] DESC

