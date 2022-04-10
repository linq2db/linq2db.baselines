BeforeExecute
-- SqlServer.Northwind SqlServer.2019 (asynchronously)
DECLARE @categoryId Int -- Int32
SET     @categoryId = 1

SELECT
	[p].[SupplierID]
FROM
	[Products] [p]
WHERE
	[p].[CategoryID] = @categoryId
ORDER BY
	ISNULL([p].[UnitPrice], 10) DESC

