BeforeExecute
-- Access AccessOleDb

SELECT
	[b_1].[Date_2],
	COUNT(*)
FROM
	(
		SELECT
			DateValue([b].[DateTimeValue]) as [Date_1],
			DateValue([b].[DateTimeValue]) as [Date_2]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON ([b].[ID] = [p].[ParentID])
	) [b_1]
GROUP BY
	[b_1].[Date_1],
	[b_1].[Date_2]

