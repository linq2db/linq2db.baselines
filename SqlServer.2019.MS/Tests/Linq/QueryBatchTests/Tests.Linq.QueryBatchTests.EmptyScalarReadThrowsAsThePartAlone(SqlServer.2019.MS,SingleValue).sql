-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (2)
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- SqlServer.2019.MS SqlServer.2019
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
		SELECT
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
	)
