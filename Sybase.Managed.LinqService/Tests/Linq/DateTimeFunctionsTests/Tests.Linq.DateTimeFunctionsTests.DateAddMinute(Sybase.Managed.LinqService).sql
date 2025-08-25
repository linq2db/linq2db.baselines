BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

