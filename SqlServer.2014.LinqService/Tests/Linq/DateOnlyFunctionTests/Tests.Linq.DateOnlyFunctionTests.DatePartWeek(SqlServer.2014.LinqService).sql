BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

