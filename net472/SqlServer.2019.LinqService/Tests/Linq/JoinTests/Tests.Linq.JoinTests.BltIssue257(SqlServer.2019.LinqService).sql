BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			Convert(Date, [selectParam].[DateTimeValue]) as [c1]
		FROM
			[LinqDataTypes] [selectParam]
				INNER JOIN [Parent] [p] ON [selectParam].[ID] = [p].[ParentID]
	) [t1]
GROUP BY
	[t1].[c1]

