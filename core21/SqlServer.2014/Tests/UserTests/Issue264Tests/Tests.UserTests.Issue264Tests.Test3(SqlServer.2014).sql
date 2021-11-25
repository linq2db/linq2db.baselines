BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	MONTH([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue])

