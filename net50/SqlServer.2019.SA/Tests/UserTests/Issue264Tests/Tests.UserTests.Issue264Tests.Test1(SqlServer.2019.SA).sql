BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as [c1]
		FROM
			[LinqDataTypes] [selectParam]
		GROUP BY
			MONTH([selectParam].[DateTimeValue]),
			YEAR([selectParam].[DateTimeValue])
	) [t1]

