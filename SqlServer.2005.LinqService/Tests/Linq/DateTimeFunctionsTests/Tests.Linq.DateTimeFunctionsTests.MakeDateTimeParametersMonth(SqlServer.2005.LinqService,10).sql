BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @month Int -- Int32
SET     @month = 10

SELECT
	CAST(RIGHT('0' + CAST(2010 + [t].[ID] AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST(@month AS VarChar(2)), 2) + N'-01' AS DateTime)
FROM
	[LinqDataTypes] [t]

