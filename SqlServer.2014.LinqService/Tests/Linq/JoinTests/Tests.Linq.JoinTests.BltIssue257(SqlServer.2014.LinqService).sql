BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[b_1].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			CAST([b].[DateTimeValue] AS Date) as [Date_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [b_1]
GROUP BY
	[b_1].[Date_1]

