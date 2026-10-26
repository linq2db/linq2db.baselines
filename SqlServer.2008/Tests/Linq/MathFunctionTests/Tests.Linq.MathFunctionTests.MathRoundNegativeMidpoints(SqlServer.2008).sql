-- SqlServer.2008
SELECT
	[r].[Id],
	CASE
		WHEN [r].[D] - FLOOR([r].[D]) = 0.5 THEN ROUND([r].[D] * 0.5, 0) * 2
		ELSE ROUND([r].[D], 0)
	END,
	CASE
		WHEN [r].[D] - FLOOR([r].[D]) = 0.5 THEN ROUND([r].[D] * 0.5, 0) * 2
		ELSE ROUND([r].[D], 0)
	END,
	ROUND([r].[D], 0),
	CASE
		WHEN [r].[F] - FLOOR([r].[F]) = 0.5 THEN ROUND([r].[F] * 0.5, 0) * 2
		ELSE ROUND([r].[F], 0)
	END,
	CASE
		WHEN [r].[F] - FLOOR([r].[F]) = 0.5 THEN ROUND([r].[F] * 0.5, 0) * 2
		ELSE ROUND([r].[F], 0)
	END,
	ROUND([r].[F], 0)
FROM
	[MidpointValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F]
FROM
	[MidpointValues] [t1]

