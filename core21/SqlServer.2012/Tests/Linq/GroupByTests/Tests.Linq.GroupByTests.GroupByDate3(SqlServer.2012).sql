BeforeExecute
-- SqlServer.2012

SELECT
	Sum([selectParam].[MoneyValue]),
	DatePart(year, DateAdd(month, ((DatePart(year, [selectParam].[DateTimeValue]) - 1900) * 12 + DatePart(month, [selectParam].[DateTimeValue])) - 1, 0)),
	DatePart(month, DateAdd(month, ((DatePart(year, [selectParam].[DateTimeValue]) - 1900) * 12 + DatePart(month, [selectParam].[DateTimeValue])) - 1, 0))
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DateAdd(month, ((DatePart(year, [selectParam].[DateTimeValue]) - 1900) * 12 + DatePart(month, [selectParam].[DateTimeValue])) - 1, 0)

