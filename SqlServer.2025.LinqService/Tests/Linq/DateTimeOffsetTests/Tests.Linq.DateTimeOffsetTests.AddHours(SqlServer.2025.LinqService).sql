BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[TransactionDate]))
FROM
	[Transactions] [t]

