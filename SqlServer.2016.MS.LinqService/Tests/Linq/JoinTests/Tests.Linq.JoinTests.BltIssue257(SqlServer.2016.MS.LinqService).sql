BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[b_1].[Date_1],
	Count(*)
FROM
	(
		SELECT
			Convert(Date, [b].[DateTimeValue]) as [Date_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [b_1]
GROUP BY
	[b_1].[Date_1]

