BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CONVERT(Date, DateAdd(weekday, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

