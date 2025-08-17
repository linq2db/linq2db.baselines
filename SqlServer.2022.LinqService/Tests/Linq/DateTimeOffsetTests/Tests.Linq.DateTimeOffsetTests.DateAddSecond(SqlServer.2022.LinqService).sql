BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

