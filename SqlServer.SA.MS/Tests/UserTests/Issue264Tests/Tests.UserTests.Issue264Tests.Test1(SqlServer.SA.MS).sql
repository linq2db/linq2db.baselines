BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	(
		SELECT
			MONTH([t1].[DateTimeValue]) as [c1],
			YEAR([t1].[DateTimeValue]) as [c2]
		FROM
			[LinqDataTypes] [t1]
		GROUP BY
			MONTH([t1].[DateTimeValue]),
			YEAR([t1].[DateTimeValue])
	) [t2]

