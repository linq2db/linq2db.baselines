-- SqlServer.2017

WITH [CTE_1] ([field_1])
AS
(
	SELECT
		IIF([g_2].[EnumValue] IS NOT NULL, [g_2].[EnumValue], 0)
	FROM
		(
			SELECT DISTINCT
				[g_1].[Value] as [Value_1],
				[g_1].[EnumValue]
			FROM
				[Issue4167Table] [g_1]
			WHERE
				[g_1].[Value] = N'000001'
		) [g_2]
)
SELECT
	[t1].[field_1]
FROM
	[CTE_1] [t1]
ORDER BY
	[t1].[field_1]

