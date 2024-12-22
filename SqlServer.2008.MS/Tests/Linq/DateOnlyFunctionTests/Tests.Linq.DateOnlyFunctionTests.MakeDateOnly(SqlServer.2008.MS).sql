BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS Date)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST('2010-' + RIGHT('0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS Date)) = 2010

