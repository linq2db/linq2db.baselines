BeforeExecute
-- SqlServer.2008

SELECT
	Convert(Date, [selectParam].[DateTimeValue]),
	Count(*)
FROM
	[LinqDataTypes] [selectParam]
		INNER JOIN [Parent] [p] ON [selectParam].[ID] = [p].[ParentID]
GROUP BY
	Convert(Date, [selectParam].[DateTimeValue])

