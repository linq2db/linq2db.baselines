BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CAST(CAST(DatePart(year, [d].[DateTimeValue]) AS NVarChar(11)) + '-02-24 00:00:00' AS DateTime)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, CAST(CAST(DatePart(year, [d].[DateTimeValue]) AS NVarChar(11)) + '-02-24 00:00:00' AS DateTime)) > 0

