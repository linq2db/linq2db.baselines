BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Date, Convert(NVarChar(100), DatePart(year, [t].[DateTimeValue])) + '-01-01')
FROM
	[LinqDataTypes] [t]

