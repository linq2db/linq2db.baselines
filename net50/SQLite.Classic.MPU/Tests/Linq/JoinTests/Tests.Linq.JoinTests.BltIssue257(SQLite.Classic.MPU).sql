BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Date([selectParam].[DateTimeValue]),
	Count(*)
FROM
	[LinqDataTypes] [selectParam]
		INNER JOIN [Parent] [p] ON [selectParam].[ID] = [p].[ParentID]
GROUP BY
	Date([selectParam].[DateTimeValue])

