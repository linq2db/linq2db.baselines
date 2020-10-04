BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[c1],
	[t1].[c2]
FROM
	(
		SELECT
			MONTH([selectParam].[DateTimeValue]) as [c1],
			YEAR([selectParam].[DateTimeValue]) as [c2]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

