BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + '-01-01')
FROM
	[LinqDataTypes] [t]

