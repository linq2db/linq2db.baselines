BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

