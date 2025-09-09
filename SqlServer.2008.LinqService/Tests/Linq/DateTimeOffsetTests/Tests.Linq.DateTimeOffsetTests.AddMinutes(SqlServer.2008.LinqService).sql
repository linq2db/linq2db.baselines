BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

