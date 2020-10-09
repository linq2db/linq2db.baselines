BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Convert(Date, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + '-01-01')
FROM
	[LinqDataTypes] [t]

