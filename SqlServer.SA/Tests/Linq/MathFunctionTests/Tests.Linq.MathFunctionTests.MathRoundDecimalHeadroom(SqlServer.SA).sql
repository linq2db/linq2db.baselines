-- SqlServer.SA SqlServer.2019
SELECT
	[r].[Id],
	IIF([r].[D] - FLOOR([r].[D]) = 0.5, ROUND([r].[D] * 0.5, 0) * 2, ROUND([r].[D], 0)),
	IIF([r].[D] - FLOOR([r].[D]) = 0.5, ROUND([r].[D] * 0.5, 0) * 2, ROUND([r].[D], 0)),
	ROUND([r].[D], 0)
FROM
	[HeadroomValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[HeadroomValues] [t1]

