BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

