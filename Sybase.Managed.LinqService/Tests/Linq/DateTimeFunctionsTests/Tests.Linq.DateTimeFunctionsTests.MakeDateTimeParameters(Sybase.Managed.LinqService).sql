BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CAST(RIGHT('02010', 4) + '-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01' AS DateTime)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST(RIGHT('02010', 4) + '-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01' AS DateTime)) = 2010

