BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01' AS DateTime)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + '-01' AS DateTime)) = 2010

