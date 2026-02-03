-- SqlServer.2005

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			CASE
				WHEN [r].[EnumValue] IS NOT NULL THEN [r].[EnumValue]
				ELSE 0
			END as [EnumValue]
		FROM
			[Issue4167Table] [r]
		WHERE
			[r].[Value] = N'000001'
		GROUP BY
			[r].[Value],
			[r].[EnumValue]
	) [t1]
ORDER BY
	[t1].[EnumValue]

