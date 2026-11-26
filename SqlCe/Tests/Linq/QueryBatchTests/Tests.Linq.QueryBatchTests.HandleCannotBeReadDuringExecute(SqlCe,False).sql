-- SqlCe
SELECT
	[t2].[Count_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t3]
		LEFT JOIN (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[BatchItem] [t1]
		) [t2] ON 1=1

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe
SELECT
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 5
ORDER BY
	[i].[Id]

