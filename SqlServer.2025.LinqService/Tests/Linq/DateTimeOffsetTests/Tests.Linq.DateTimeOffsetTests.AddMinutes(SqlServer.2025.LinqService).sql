BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

