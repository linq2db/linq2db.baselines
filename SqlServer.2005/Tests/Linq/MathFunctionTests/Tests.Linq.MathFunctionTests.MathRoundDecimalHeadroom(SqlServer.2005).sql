-- SqlServer.2005
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
	ROUND([r].[D], 0)
FROM
	[HeadroomValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[D]
FROM
	[HeadroomValues] [t1]

