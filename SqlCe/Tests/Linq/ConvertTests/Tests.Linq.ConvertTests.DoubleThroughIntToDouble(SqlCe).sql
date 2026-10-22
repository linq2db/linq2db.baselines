-- SqlCe
SELECT
	[r].[Id],
	CAST(CAST([r].[F] AS Int) AS Float)
FROM
	[DoubleValue] [r]
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[F]
FROM
	[DoubleValue] [t1]

