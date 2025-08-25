BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + '-01-01' AS Date)
FROM
	[LinqDataTypes] [t]

