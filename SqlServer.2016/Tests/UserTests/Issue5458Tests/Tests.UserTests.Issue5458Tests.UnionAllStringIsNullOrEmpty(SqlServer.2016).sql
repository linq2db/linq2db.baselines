-- SqlServer.2016

SELECT
	[t1].[Id],
	IIF([t1].[Value_1] IS NULL OR LEN([t1].[Value_1] + N'.') = 1, 1, 0)
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value] as [Value_1]
		FROM
			[StringTable] [t]
		WHERE
			[t].[Id] <= 2
		UNION ALL
		SELECT
			[t_1].[Id],
			[t_1].[Value] as [Value_1]
		FROM
			[StringTable] [t_1]
		WHERE
			[t_1].[Id] > 2
	) [t1]
ORDER BY
	[t1].[Id]

