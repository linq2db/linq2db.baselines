BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

