BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			CAST([b].[DateTimeValue] AS Date) as [Key_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [t1]
GROUP BY
	[t1].[Key_1]

