-- SqlCe
SELECT
	[g_1].[Id],
	[t1].[V]
FROM
	[BatchGroup] [g_1]
		OUTER APPLY (
			SELECT TOP (1)
				[i].[Value] as [V]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[GroupId] = [g_1].[Id]
			ORDER BY
				[i].[Id]
		) [t1]
WHERE
	[g_1].[Id] = 1
UNION ALL
SELECT
	[g_2].[Id],
	[t2].[V]
FROM
	[BatchGroup] [g_2]
		OUTER APPLY (
			SELECT TOP (1)
				[i_1].[Value] as [V]
			FROM
				[BatchItem] [i_1]
			WHERE
				[i_1].[GroupId] = [g_2].[Id]
			ORDER BY
				[i_1].[Id]
		) [t2]
WHERE
	[g_2].[Id] = 2

-- SqlCe
SELECT
	[t2].[Item2]
FROM
	(
		SELECT
			1 as [c1]
	) [t3]
		LEFT JOIN (
			SELECT
				COUNT(*) as [Item2]
			FROM
				[BatchItem] [t1]
		) [t2] ON 1=1

