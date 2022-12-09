BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t2].[c1]
FROM
	(
		SELECT
			[a_Category].[CategoryID] as [c1]
		FROM
			[Products] [t1]
				LEFT JOIN [Categories] [a_Category] ON [t1].[CategoryID] = [a_Category].[CategoryID]
	) [t2]
GROUP BY
	[t2].[c1]
HAVING
	Count(*) = 12

