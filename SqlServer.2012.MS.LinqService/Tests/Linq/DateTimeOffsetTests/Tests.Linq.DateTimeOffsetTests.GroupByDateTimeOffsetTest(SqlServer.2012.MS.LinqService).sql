BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[x].[TransactionDate],
	COUNT(*)
FROM
	[Transactions] [x]
GROUP BY
	[x].[TransactionDate]
ORDER BY
	[x].[TransactionDate]

