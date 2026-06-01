-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]
ORDER BY
	[t1].[Grp],
	CASE
		WHEN [t1].[Value] IS NULL THEN 0
		ELSE 1
	END,
	[t1].[Value] DESC,
	[t1].[Id]

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Grp],
	[t1].[Value]
FROM
	[NullsTable] [t1]

