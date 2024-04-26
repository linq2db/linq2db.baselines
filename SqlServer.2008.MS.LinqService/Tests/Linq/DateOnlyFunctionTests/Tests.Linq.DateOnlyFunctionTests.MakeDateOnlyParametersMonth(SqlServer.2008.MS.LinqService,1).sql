BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(RIGHT('0' + CAST(2010 + [t].[ID] AS VarChar(4)), 4) + '-' + RIGHT(N'01', 2) + N'-01' AS Date)
FROM
	[LinqDataTypes] [t]

