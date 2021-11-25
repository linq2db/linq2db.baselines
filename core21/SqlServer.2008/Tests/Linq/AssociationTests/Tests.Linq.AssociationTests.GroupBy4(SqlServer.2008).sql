BeforeExecute
-- SqlServer.2008

SELECT
	DatePart(year, [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart(year, [selectParam].[DateTimeValue])

