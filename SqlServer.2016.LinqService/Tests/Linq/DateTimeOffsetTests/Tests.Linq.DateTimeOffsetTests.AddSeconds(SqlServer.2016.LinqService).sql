BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(second, DateAdd(second, -35, [t].[TransactionDate]))
FROM
	[Transactions] [t]

