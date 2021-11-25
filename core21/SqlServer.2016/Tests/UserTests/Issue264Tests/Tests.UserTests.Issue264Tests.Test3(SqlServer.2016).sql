BeforeExecute
-- SqlServer.2016

SELECT
	MONTH([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue])

