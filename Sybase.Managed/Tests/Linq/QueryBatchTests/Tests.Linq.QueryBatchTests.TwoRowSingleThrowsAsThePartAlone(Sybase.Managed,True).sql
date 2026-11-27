-- Sybase.Managed Sybase
SELECT TOP 2
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] < 3

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]

-- Sybase.Managed Sybase
SELECT
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	(
		SELECT
			1 as [c1]
	) [t1]
		LEFT JOIN [BatchItem] [i] ON [i].[Id] < 3

