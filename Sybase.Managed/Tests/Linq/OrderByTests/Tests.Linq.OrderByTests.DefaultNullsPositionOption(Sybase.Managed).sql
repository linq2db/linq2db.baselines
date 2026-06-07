-- Sybase.Managed Sybase

SELECT TOP 3
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	CASE
		WHEN [x].[Value] IS NULL THEN 1
		ELSE 0
	END,
	[x].[Value],
	[x].[Id]

-- Sybase.Managed Sybase

SELECT TOP 3
	[x].[Id]
FROM
	[NullsTable] [x]
ORDER BY
	CASE
		WHEN [x].[Value] IS NULL THEN 1
		ELSE 0
	END,
	[x].[Value],
	[x].[Id]

