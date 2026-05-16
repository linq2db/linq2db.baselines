-- Sybase.Managed Sybase

SELECT
	CAST(CASE WHEN RIGHT(CASE WHEN '0' IS NULL OR CAST(DatePart(year, [p].[DateTimeValue]) AS VarChar(4)) IS NULL THEN NULL ELSE '0' + CAST(DatePart(year, [p].[DateTimeValue]) AS VarChar(4)) END, 4) IS NULL OR '-10-01' IS NULL THEN NULL ELSE RIGHT(CASE WHEN '0' IS NULL OR CAST(DatePart(year, [p].[DateTimeValue]) AS VarChar(4)) IS NULL THEN NULL ELSE '0' + CAST(DatePart(year, [p].[DateTimeValue]) AS VarChar(4)) END, 4) + '-10-01' END AS Date)
FROM
	[LinqDataTypes] [p]

