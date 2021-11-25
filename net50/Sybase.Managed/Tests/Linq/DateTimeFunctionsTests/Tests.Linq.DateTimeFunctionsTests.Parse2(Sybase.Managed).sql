BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(DateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + '-02-24 00:00:00')
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, Convert(DateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + '-02-24 00:00:00')) > 0

