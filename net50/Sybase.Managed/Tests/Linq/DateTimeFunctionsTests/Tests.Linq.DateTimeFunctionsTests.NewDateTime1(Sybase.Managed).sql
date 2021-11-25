BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Date, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + '-10-1')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(month, Convert(Date, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + '-10-1')) = 10

