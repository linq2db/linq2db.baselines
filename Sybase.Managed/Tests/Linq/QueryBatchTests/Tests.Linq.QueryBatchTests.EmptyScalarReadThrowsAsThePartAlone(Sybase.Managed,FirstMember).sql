-- Sybase.Managed Sybase
SELECT TOP 1
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
ORDER BY
	[i].[Id]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]

-- Sybase.Managed Sybase
SELECT TOP 1
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
ORDER BY
	[i].[Id]

