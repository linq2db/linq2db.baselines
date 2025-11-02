-- SqlServer.2025 SqlServer.2022

SELECT
	CAST(DateAdd(quarter, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

