-- SqlServer.2014
SELECT
	[r].[Id],
	CAST(CAST(Floor([r].[F]) AS Int) AS Float)
FROM
	[DoubleValue] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[F]
FROM
	[DoubleValue] [t1]

