BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as [c1]
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
	) [t2]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

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

