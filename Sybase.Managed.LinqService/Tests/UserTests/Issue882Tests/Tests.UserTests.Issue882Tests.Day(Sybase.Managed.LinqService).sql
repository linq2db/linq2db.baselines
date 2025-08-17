BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

