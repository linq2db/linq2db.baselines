BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Date_1],
	Count(*)
FROM
	(
		SELECT
			Cast(Floor(Cast([selectParam].[DateTimeValue] as Float)) as DateTime) as [Date_1]
		FROM
			[LinqDataTypes] [selectParam]
				INNER JOIN [Parent] [p] ON [selectParam].[ID] = [p].[ParentID]
	) [t1]
GROUP BY
	[t1].[Date_1]

