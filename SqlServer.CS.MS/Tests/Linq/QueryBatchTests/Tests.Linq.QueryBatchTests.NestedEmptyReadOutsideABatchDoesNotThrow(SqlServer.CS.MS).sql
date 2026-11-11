-- SqlServer.CS.MS SqlServer.2025
SELECT
	(
		SELECT TOP (1)
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[GroupId] = [g_1].[Id] AND [i].[Id] > 8
	)
FROM
	[BatchGroup] [g_1]
ORDER BY
	[g_1].[Id]

