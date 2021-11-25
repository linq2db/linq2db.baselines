BeforeExecute
-- SqlServer.2016

SELECT
	DatePart(year, [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart(year, [selectParam].[DateTimeValue])

