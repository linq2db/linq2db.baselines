-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[TransactionId],
	CAST([x].[TransactionDate] AS DateTime2)
FROM
	[DateTimeOffsetTable] [x]
ORDER BY
	CAST([x].[TransactionDate] AS DateTime2)

