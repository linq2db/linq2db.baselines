BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CAST(CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + ':01:01' AS Time)
FROM
	[LinqDataTypes] [t]

