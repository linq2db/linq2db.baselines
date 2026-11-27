-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (1)
	IIF([i].[Id] > 0, 1, 0),
	[i].[Id],
	[i].[GroupId]
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
	[t1].[Item1],
	[t1].[c1],
	[t1].[Id],
	[t1].[GroupId]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (1)
				IIF([i].[Id] > 0, 1, 0) as [c1],
				[i].[Id],
				[i].[GroupId],
				1 as [Item1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
		) [t1] ON 1=1
