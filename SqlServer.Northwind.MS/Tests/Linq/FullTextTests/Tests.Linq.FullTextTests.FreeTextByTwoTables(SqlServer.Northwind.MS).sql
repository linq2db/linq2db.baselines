-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c1].[CategoryID],
	[c1].[CategoryName],
	[c1].[Description],
	[c1].[Picture]
FROM
	[Categories] [c1]
		INNER JOIN [Categories] [c2] ON FREETEXT(([c1].*), N'meat')
WHERE
	FREETEXT(([c2].*), N'bread')
ORDER BY
	[c1].[CategoryID] DESC

