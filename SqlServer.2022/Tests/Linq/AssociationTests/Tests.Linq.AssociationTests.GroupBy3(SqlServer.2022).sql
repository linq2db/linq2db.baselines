BeforeExecute
-- SqlServer.2022

SELECT
	[g_2].[Year_1]
FROM
	(
		SELECT
			DatePart(year, [a_Types].[DateTimeValue]) as [Year_1]
		FROM
			[Parent] [g_1]
				LEFT JOIN [LinqDataTypes] [a_Types] ON [g_1].[ParentID] = [a_Types].[ID]
	) [g_2]
GROUP BY
	[g_2].[Year_1]

