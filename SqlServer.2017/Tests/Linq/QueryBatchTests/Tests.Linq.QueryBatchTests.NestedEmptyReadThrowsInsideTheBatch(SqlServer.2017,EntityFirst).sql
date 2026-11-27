-- SqlServer.2017
SELECT
	[g_1].[Id],
	[t1].[Item_1],
	[t1].[Id],
	[t1].[Value_1],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchGroup] [g_1]
		OUTER APPLY (
			SELECT TOP (1)
				[i].[Id],
				[i].[Value] as [Value_1],
				[i].[GroupId],
				[i].[Name],
				1 as [Item_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[GroupId] = [g_1].[Id] AND [i].[Id] > 8
		) [t1]
ORDER BY
	[g_1].[Id]
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)

