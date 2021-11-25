BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Sum([selectParam].[MoneyValue]),
	DatePart(year, Convert(Date, Convert(VarChar(11), DatePart(year, [selectParam].[DateTimeValue])) + '-' + Convert(VarChar(11), DatePart(month, [selectParam].[DateTimeValue])) + '-1')),
	DatePart(month, Convert(Date, Convert(VarChar(11), DatePart(year, [selectParam].[DateTimeValue])) + '-' + Convert(VarChar(11), DatePart(month, [selectParam].[DateTimeValue])) + '-1'))
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	Convert(Date, Convert(VarChar(11), DatePart(year, [selectParam].[DateTimeValue])) + '-' + Convert(VarChar(11), DatePart(month, [selectParam].[DateTimeValue])) + '-1')

