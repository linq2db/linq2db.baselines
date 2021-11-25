BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DatePart(year, [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart(year, [selectParam].[DateTimeValue])

