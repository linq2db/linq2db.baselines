-- SqlServer.2012
SELECT TOP (1)
	[t1].[c1]
FROM
	(
		SELECT
			LAG([i].[Id]) OVER (ORDER BY [i].[Id]) as [c1],
			[i].[Id]
		FROM
			[BatchItem] [i]
	) [t1]
ORDER BY
	[t1].[Id]

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
	[t2].[Item1],
	[t2].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t3]
		LEFT JOIN (
			SELECT TOP (1)
				1 as [Item1],
				[t1].[c1] as [Item1_1]
			FROM
				(
					SELECT
						LAG([i].[Id]) OVER (ORDER BY [i].[Id]) as [c1],
						[i].[Id]
					FROM
						[BatchItem] [i]
				) [t1]
			ORDER BY
				[t1].[Id]
		) [t2] ON 1=1

