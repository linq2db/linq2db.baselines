BeforeExecute
-- SqlServer.Contained SqlServer.2017

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

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	MONTH([selectParam].[DateTimeValue]),
	YEAR([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue]),
	YEAR([selectParam].[DateTimeValue])

