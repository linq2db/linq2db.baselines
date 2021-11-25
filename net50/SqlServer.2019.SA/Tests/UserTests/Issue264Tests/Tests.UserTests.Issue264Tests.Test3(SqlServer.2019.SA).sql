BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	MONTH([selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	MONTH([selectParam].[DateTimeValue])

