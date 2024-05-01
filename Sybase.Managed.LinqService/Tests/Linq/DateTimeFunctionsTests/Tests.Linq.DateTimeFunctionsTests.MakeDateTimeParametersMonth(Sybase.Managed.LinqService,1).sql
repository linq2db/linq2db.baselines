BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CAST(RIGHT('0' + CAST(2010 + [t].[ID] AS VarChar(4)), 4) + '-' + RIGHT('01', 2) + '-01' AS DateTime)
FROM
	[LinqDataTypes] [t]

