BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS Date)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS Date)) = 2010

