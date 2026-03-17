-- Sybase.Managed Sybase

SELECT
	CAST(DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

