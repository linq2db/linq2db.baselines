BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CONVERT(Date, DateAdd(week, -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

