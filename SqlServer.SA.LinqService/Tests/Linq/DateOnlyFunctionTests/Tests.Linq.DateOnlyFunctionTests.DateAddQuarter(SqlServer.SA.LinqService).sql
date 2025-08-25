BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

