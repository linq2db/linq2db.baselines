BeforeExecute
-- SqlServer.2008

SELECT
	MONTH([selectParam].[DateTimeValue]),
	YEAR([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue]),
	YEAR([selectParam].[DateTimeValue])

