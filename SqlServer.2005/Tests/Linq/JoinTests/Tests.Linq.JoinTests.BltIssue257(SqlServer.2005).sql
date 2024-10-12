BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			DateAdd(dd, DateDiff(dd, 0, [b].[DateTimeValue]), 0) as [Key_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [t1]
GROUP BY
	[t1].[Key_1]

