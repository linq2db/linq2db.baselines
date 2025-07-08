BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	CAST(DateAdd(month, -2, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

