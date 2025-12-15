-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(month, -2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

