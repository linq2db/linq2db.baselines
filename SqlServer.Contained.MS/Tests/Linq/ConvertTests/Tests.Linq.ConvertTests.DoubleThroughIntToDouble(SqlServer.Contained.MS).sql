-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[r].[Id],
	CAST(CAST(Floor([r].[F]) AS Int) AS Float)
FROM
	[DoubleValue] [r]
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[F]
FROM
	[DoubleValue] [t1]

