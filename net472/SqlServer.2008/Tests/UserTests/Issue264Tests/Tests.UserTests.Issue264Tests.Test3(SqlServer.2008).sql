BeforeExecute
-- SqlServer.2008

SELECT
	MONTH([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue])

