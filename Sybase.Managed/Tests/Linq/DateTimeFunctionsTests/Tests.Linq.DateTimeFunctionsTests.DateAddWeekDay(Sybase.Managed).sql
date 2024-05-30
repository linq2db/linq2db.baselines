BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

