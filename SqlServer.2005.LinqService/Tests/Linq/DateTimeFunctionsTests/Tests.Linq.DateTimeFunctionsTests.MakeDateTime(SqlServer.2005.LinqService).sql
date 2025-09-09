BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS DateTime)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS DateTime)) = 2010

