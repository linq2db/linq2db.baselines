-- SqlCe
SELECT
	[t1].[Id]
FROM
	[BatchGroup] [g_1]
		CROSS APPLY (
			SELECT TOP (1)
				[i].[Id]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[GroupId] = [g_1].[Id] AND [i].[Id] > 8
		) [t1]
ORDER BY
	[g_1].[Id]

