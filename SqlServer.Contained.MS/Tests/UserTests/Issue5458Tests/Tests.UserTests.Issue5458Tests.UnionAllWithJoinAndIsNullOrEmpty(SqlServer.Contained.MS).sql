-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value_1],
	IIF(NOT ([t1].[Value_1] IS NULL OR LEN([t1].[Value_1] + N'.') = 1), [t1].[Value_1], N'default')
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value] as [Value_1]
		FROM
			[StringTable] [t]
		WHERE
			[t].[Id] <= 1
		UNION ALL
		SELECT
			[t_1].[Id],
			[t_1].[Value] as [Value_1]
		FROM
			[StringTable] [t_1]
		WHERE
			[t_1].[Id] > 1
	) [t1]
		INNER JOIN [OtherTable] [o] ON [t1].[Id] = [o].[Id]
ORDER BY
	[t1].[Id]

