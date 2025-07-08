BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(IIF([g_1].[TimeStamp] > DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7), 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

