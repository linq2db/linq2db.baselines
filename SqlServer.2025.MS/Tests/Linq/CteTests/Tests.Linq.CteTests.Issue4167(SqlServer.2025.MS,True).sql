-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

WITH [CTE_1] ([EnumValue])
AS
(
	SELECT
		IIF([g_1].[EnumValue] IS NOT NULL, [g_1].[EnumValue], 0)
	FROM
		[Issue4167Table] [g_1]
	WHERE
		[g_1].[Value] = N'000001'
	GROUP BY
		[g_1].[Value],
		[g_1].[EnumValue]
)
SELECT
	[t1].[EnumValue]
FROM
	[CTE_1] [t1]
ORDER BY
	[t1].[EnumValue]

