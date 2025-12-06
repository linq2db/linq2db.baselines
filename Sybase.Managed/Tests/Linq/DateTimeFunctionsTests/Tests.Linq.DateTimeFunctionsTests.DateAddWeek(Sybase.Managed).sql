-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(week, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

