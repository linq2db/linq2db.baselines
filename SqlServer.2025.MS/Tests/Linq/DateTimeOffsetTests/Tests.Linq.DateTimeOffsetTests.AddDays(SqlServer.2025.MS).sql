-- SqlServer.2025.MS SqlServer.2025

SELECT
	CAST(DateAdd(day, 5, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

