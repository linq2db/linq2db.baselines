-- SqlServer.2012
SELECT TOP (1)
	[i].[Value]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
;
SELECT
	[t1].[Item1],
	[t1].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (1)
				1 as [Item1],
				[i].[Value] as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
		) [t1] ON 1=1

