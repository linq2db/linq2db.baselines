-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	CASE
		WHEN [t1].[Value_1] IS NULL OR LEN([t1].[Value_1] + N'.') = 1
			THEN 1
		ELSE 0
	END
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

