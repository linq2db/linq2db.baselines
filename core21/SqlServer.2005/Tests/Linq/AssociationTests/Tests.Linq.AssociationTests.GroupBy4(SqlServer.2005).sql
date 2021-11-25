BeforeExecute
-- SqlServer.2005

SELECT
	DatePart(year, [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart(year, [selectParam].[DateTimeValue])

