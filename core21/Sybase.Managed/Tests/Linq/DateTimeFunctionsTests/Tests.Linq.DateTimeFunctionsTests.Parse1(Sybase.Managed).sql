BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[d].[DateTimeValue]
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

