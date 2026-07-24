-- SQLite.Classic SQLite
SELECT
	[t1].[CustomerId],
	[t1].[Rn]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY [c_1].[customerid]) as [Rn],
			[c_1].[customerid] as [CustomerId]
		FROM
			[l2dbnh_customers] [c_1]
	) [t1]
ORDER BY
	[t1].[Rn]


