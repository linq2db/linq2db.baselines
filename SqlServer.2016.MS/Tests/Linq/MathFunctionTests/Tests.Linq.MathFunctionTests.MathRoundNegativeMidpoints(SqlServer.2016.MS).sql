-- SqlServer.2016.MS SqlServer.2016
SELECT
	[r].[Id],
	IIF([r].[D] - FLOOR([r].[D]) = 0.5, ROUND([r].[D] * 0.5, 0) * 2, ROUND([r].[D], 0)),
	IIF([r].[D] - FLOOR([r].[D]) = 0.5, ROUND([r].[D] * 0.5, 0) * 2, ROUND([r].[D], 0)),
	ROUND([r].[D], 0),
	IIF([r].[F] - FLOOR([r].[F]) = 0.5, ROUND([r].[F] * 0.5, 0) * 2, ROUND([r].[F], 0)),
	IIF([r].[F] - FLOOR([r].[F]) = 0.5, ROUND([r].[F] * 0.5, 0) * 2, ROUND([r].[F], 0)),
	ROUND([r].[F], 0)
FROM
	[MidpointValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F]
FROM
	[MidpointValues] [t1]

