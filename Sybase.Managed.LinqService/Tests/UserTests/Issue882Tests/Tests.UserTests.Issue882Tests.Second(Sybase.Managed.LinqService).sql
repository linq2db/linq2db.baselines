BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

