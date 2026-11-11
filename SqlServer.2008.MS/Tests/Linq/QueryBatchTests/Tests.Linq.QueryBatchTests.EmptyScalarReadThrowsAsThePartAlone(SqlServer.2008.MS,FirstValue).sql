-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (1)
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

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
	(
		SELECT TOP (1)
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
	)
