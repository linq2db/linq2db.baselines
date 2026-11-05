-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (1)
	[i].[Value]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 3

-- SqlServer.2016.MS SqlServer.2016
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
			[i].[Value]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] = 3
	)
