BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[TransactionDate]))
FROM
	[Transactions] [t]

