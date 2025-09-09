BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

