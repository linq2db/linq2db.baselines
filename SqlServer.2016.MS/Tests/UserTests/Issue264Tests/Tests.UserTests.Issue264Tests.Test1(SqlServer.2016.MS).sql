BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[LinqDataTypes] [t1]
		GROUP BY
			MONTH([t1].[DateTimeValue]),
			YEAR([t1].[DateTimeValue])
	) [t2]

