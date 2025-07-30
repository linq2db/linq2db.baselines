BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[x].[TransactionDate],
	COUNT(*)
FROM
	[Transactions] [x]
GROUP BY
	[x].[TransactionDate]
ORDER BY
	[x].[TransactionDate]

