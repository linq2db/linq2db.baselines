BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(second, DateAdd(second, -35, [t].[TransactionDate]))
FROM
	[Transactions] [t]

