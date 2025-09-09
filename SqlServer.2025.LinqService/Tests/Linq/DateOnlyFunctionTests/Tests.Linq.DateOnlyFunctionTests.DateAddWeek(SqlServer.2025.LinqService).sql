BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

