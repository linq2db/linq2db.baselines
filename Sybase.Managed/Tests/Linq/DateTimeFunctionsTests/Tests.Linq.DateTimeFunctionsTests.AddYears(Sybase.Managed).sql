BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(year, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

