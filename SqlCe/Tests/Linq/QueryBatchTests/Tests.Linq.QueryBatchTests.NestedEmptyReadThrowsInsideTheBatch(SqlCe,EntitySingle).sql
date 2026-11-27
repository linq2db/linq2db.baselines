-- SqlCe
SELECT
	[g_1].[Id],
	[t1].[Item_1],
	[t1].[Id] as [Id_1],
	[t1].[Value_1],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchGroup] [g_1]
		LEFT JOIN (
			SELECT
				[i].[Id],
				[i].[Value] as [Value_1],
				[i].[GroupId],
				[i].[Name],
				1 as [Item_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 8
		) [t1] ON [t1].[GroupId] = [g_1].[Id]
ORDER BY
	[g_1].[Id]

