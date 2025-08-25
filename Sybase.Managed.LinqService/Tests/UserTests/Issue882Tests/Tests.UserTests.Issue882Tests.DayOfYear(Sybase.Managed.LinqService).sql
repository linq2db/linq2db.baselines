BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

