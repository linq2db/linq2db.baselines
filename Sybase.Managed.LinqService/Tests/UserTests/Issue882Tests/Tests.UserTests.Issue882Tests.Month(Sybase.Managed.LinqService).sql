BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

