-- Sybase.Managed Sybase

SELECT
	CAST(DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS Float)
FROM
	[LinqDataTypes] [t]

