-- SqlCe
SELECT TOP (1)
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
ORDER BY
	[i].[Id]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]

-- SqlCe
SELECT
	[t1].[Item1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		CROSS JOIN (
			SELECT TOP (1)
				[i].[Id] as [Item1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
			ORDER BY
				[i].[Id]
		) [t1]

