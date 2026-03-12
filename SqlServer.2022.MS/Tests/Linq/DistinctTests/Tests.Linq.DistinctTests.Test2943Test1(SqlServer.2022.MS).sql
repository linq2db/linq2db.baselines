-- SqlServer.2022.MS SqlServer.2022

SELECT DISTINCT
	[r].[F1],
	[r].[F2]
FROM
	[DistinctOrderByTable] [r]
ORDER BY
	[r].[F1] DESC,
	[r].[F2]

