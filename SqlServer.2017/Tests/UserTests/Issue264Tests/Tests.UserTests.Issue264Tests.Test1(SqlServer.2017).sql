BeforeExecute
-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			(
				SELECT
					MONTH([t1].[DateTimeValue]) as [c1],
					YEAR([t1].[DateTimeValue]) as [c2]
				FROM
					[LinqDataTypes] [t1]
			) [t2]
		GROUP BY
			[t2].[c1],
			[t2].[c2]
	) [t3]

