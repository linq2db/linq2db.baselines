BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

