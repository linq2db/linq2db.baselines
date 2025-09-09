BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

