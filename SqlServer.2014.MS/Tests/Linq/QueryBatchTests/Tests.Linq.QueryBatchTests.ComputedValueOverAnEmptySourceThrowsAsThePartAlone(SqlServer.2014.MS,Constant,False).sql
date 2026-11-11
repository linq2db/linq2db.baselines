-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (1)
	1
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- SqlServer.2014.MS SqlServer.2014
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
	[t1].[Item1_1],
	IIF([t1].[Item1] IS NOT NULL, 2, NULL)
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (1)
				2 as [Item1],
				1 as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
		) [t1] ON 1=1
