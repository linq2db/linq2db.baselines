BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[c1].[CategoryID],
	[c1].[CategoryName],
	[c1].[Description],
	[c1].[Picture]
FROM
	[Categories] [c1]
		INNER JOIN [Categories] [c_1] ON FREETEXT(([c_1].*), N'bread') AND FREETEXT(([c1].*), N'meat')
ORDER BY
	[c1].[CategoryID] DESC

