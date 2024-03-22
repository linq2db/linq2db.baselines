BeforeExecute
-- SqlServer.2005

SELECT
	[b_1].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			Cast(Floor(Cast([b].[DateTimeValue] as Float)) as DateTime) as [Date_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [b_1]
GROUP BY
	[b_1].[Date_1]

