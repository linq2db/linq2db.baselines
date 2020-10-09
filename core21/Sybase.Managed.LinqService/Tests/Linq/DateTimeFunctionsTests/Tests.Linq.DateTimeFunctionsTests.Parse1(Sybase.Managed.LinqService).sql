BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(day, [t].[DateTimeValue]) > 0

