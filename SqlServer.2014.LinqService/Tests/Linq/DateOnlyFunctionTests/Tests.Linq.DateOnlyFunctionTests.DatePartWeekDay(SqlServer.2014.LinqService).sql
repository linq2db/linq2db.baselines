BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

