-- SqlServer.2022.MS SqlServer.2022

SELECT
	[x].[TransactionId],
	CAST([x].[TransactionDate] AS DateTime2)
FROM
	[DateTimeOffsetTable] [x]
ORDER BY
	CAST([x].[TransactionDate] AS DateTime2)

