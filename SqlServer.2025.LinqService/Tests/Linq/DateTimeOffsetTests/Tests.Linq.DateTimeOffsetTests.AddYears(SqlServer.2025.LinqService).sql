BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	CAST(DateAdd(year, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

