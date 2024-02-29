BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @search NVarChar(4000) -- String
SET     @search = N'meat'
DECLARE @code Int -- Int32
SET     @code = 1036

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
WHERE
	CONTAINS(([c_1].[CategoryName], [c_1].[Description]), @search, LANGUAGE @code)
ORDER BY
	[c_1].[CategoryID] DESC

