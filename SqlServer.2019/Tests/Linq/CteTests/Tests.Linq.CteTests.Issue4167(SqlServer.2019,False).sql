-- SqlServer.2019

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			IIF([r].[EnumValue] IS NOT NULL, [r].[EnumValue], 0) as [EnumValue]
		FROM
			(
				SELECT DISTINCT
					[g_1].[Value] as [Value_1],
					[g_1].[EnumValue]
				FROM
					[Issue4167Table] [g_1]
				WHERE
					[g_1].[Value] = N'000001'
			) [r]
	) [t1]
ORDER BY
	[t1].[EnumValue]

