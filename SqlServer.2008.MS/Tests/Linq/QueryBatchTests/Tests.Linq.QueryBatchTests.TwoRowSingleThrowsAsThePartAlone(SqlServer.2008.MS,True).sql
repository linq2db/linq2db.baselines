-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] < 3

-- SqlServer.2008.MS SqlServer.2008
-- Command 1
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]

-- Command 2
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
