BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

