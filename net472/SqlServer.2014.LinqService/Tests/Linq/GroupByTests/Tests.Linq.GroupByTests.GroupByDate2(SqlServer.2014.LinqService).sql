BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Sum([selectParam].[MoneyValue]),
	DatePart(year, [selectParam].[DateTimeValue]),
	DatePart(month, [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart(month, [selectParam].[DateTimeValue]),
	DatePart(year, [selectParam].[DateTimeValue])

