BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[b_1].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			DateValue([b].[DateTimeValue]) as [Date_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON ([b].[ID] = [p].[ParentID])
	) [b_1]
GROUP BY
	[b_1].[Date_1]

