BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DateAdd(month, 2, [t].[TransactionDate])
FROM
	[Transactions] [t]

