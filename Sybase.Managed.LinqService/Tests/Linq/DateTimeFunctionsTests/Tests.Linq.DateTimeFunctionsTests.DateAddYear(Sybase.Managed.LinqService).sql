BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(year, 11, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

