BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DateDiff_Big(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

