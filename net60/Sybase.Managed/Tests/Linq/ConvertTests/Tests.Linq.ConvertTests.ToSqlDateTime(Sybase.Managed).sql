BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(DateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + '-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

