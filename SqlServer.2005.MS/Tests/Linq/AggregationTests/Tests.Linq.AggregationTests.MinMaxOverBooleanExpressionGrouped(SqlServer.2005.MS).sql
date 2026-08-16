-- SqlServer.2005.MS SqlServer.2005
SELECT
	[g_1].[ItemId],
	MAX(CASE
		WHEN [g_1].[Value] = N'10' THEN 1
		ELSE 0
	END),
	MIN(CASE
		WHEN [g_1].[Value] = N'10' THEN 1
		ELSE 0
	END)
FROM
	[ItemValue] [g_1]
GROUP BY
	[g_1].[ItemId]
ORDER BY
	[g_1].[ItemId]

