-- SqlServer.2025 SqlServer.2022

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

