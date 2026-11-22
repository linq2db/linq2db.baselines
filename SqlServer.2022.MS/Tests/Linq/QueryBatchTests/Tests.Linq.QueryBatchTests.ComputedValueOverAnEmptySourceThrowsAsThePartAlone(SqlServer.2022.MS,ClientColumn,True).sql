-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- SqlServer.2022.MS SqlServer.2022
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
	[t1].[not_null],
	[t1].[Item1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT
				1 as [not_null],
				[i].[Id] as [Item1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
		) [t1] ON 1=1
