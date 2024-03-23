BeforeExecute
-- SqlServer.2005

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

