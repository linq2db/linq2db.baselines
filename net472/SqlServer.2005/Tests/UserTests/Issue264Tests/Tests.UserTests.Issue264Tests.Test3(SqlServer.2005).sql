BeforeExecute
-- SqlServer.2005

SELECT
	MONTH([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue])

