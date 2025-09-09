BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

