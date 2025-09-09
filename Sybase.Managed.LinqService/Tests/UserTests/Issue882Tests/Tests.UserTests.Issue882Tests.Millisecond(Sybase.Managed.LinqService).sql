BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

