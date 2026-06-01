-- Sybase.Managed Sybase
DECLARE @month Integer -- Int32
SET     @month = 1

SELECT
	CAST(CASE WHEN RIGHT(CASE WHEN '0' IS NULL OR CAST(2010 + [t].[ID] AS VarChar(4)) IS NULL THEN NULL ELSE '0' || CAST(2010 + [t].[ID] AS VarChar(4)) END, 4) IS NULL OR '-' IS NULL OR RIGHT(CASE WHEN '0' IS NULL OR CAST(@month AS VarChar(2)) IS NULL THEN NULL ELSE '0' || CAST(@month AS VarChar(2)) END, 2) IS NULL OR '-01' IS NULL THEN NULL ELSE RIGHT(CASE WHEN '0' IS NULL OR CAST(2010 + [t].[ID] AS VarChar(4)) IS NULL THEN NULL ELSE '0' || CAST(2010 + [t].[ID] AS VarChar(4)) END, 4) || '-' || RIGHT(CASE WHEN '0' IS NULL OR CAST(@month AS VarChar(2)) IS NULL THEN NULL ELSE '0' || CAST(@month AS VarChar(2)) END, 2) || '-01' END AS Date)
FROM
	[LinqDataTypes] [t]

