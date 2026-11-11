-- SqlServer.CS SqlServer.2025
SELECT
	[g_1].[Id],
	[t1].[First_1],
	[t1].[First_2]
FROM
	[BatchGroup] [g_1]
		OUTER APPLY (
			SELECT TOP (1)
				1 as [First_1],
				[i].[Value] as [First_2]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[GroupId] = [g_1].[Id]
			ORDER BY
				[i].[Id]
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

-- SqlServer.CS SqlServer.2025
SELECT
	[g_1].[Id],
	[t1].[First_1],
	[t1].[First_2]
FROM
	[BatchGroup] [g_1]
		OUTER APPLY (
			SELECT TOP (1)
				1 as [First_1],
				[i].[Value] as [First_2]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[GroupId] = [g_1].[Id] AND [i].[Id] > 8
			ORDER BY
				[i].[Id]
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

