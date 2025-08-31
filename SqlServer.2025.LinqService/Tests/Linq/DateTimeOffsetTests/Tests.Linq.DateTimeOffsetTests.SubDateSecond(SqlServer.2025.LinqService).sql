BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DateDiff_Big(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

