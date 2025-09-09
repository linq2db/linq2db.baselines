BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01' AS DateTime)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01' AS DateTime)) = 2010

