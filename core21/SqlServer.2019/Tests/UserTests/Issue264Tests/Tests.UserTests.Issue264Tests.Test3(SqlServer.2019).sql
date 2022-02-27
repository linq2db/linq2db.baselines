BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			MONTH([selectParam].[DateTimeValue]) as [c1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

