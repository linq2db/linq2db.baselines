BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CONVERT(Date, DateAdd(day, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

