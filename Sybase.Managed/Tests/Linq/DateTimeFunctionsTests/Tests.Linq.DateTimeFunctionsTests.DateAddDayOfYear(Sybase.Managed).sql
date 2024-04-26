BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(dayofyear, 3, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

