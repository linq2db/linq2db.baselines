BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + '-1-1')
FROM
	[LinqDataTypes] [t]

