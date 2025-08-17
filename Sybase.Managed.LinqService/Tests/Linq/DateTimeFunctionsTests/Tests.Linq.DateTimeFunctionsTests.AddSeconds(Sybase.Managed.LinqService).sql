BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(second, DateAdd(second, -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

