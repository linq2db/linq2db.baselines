BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CONVERT(Date, DateAdd(year, 11, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

