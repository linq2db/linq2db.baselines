BeforeExecute
-- Sybase.Managed Sybase
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + '-01' AS DateTime) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

