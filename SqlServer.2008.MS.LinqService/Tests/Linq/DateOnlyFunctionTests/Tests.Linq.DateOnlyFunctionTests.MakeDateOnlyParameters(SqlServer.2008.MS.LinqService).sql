BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + N'-01' AS Date) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

