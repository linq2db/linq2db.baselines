BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

