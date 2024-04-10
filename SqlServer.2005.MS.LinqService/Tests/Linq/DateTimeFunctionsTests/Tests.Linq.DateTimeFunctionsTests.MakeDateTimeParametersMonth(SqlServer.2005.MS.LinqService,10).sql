BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST(RIGHT('0' + CAST(2010 + [t].[ID] AS VarChar(4)), 4) + '-' + RIGHT(N'010', 2) + N'-01' AS DateTime)
FROM
	[LinqDataTypes] [t]

