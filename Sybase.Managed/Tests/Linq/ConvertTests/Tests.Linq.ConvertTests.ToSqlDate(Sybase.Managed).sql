BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + '-01-01' AS Date)
FROM
	[LinqDataTypes] [t]

