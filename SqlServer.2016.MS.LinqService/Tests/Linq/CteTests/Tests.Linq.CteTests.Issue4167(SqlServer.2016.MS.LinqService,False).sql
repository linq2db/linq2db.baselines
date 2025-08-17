BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			IIF([r].[EnumValue] IS NOT NULL, [r].[EnumValue], 0) as [EnumValue]
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

