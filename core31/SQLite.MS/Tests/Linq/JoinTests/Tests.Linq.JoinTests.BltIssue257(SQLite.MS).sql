BeforeExecute
-- SQLite.MS SQLite

SELECT
	Date([selectParam].[DateTimeValue]),
	Count(*)
FROM
	[LinqDataTypes] [selectParam]
		INNER JOIN [Parent] [p] ON [selectParam].[ID] = [p].[ParentID]
GROUP BY
	Date([selectParam].[DateTimeValue])

