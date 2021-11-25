BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(DateTime, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + '-10-1 20:35:44')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(month, Convert(DateTime, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + '-10-1 20:35:44')) = 10

