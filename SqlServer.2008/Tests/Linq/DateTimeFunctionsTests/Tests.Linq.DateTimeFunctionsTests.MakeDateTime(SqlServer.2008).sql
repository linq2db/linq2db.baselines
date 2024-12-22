BeforeExecute
-- SqlServer.2008

SELECT
	CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS DateTime2)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS DateTime2)) = 2010

