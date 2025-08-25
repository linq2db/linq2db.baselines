BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CONVERT(Date, [d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

