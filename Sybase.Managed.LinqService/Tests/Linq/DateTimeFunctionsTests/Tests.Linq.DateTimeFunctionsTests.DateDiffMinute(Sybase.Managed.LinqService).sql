BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DateDiff(minute, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

