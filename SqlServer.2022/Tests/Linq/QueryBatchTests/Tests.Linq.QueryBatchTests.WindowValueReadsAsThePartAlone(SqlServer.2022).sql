-- SqlServer.2022
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

-- SqlServer.2022
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
;
SELECT
	(
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
	)

