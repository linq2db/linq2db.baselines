BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	MONTH([selectParam].[DateTimeValue]),
	YEAR([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue]),
	YEAR([selectParam].[DateTimeValue])

