BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

