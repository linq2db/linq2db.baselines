BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

