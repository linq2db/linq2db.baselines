BeforeExecute
-- SqlServer.2005

SELECT
	Cast(Floor(Cast([selectParam].[DateTimeValue] as Float)) as DateTime),
	Count(*)
FROM
	[LinqDataTypes] [selectParam]
		INNER JOIN [Parent] [p] ON [selectParam].[ID] = [p].[ParentID]
GROUP BY
	Cast(Floor(Cast([selectParam].[DateTimeValue] as Float)) as DateTime)

