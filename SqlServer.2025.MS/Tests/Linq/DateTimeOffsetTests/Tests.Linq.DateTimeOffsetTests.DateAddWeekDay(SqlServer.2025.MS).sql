-- SqlServer.2025.MS SqlServer.2025

SELECT
	CAST(DateAdd(weekday, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

