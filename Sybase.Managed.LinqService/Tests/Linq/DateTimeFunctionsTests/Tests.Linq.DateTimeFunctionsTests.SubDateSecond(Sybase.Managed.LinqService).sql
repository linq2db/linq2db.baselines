BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DateDiff(second, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

