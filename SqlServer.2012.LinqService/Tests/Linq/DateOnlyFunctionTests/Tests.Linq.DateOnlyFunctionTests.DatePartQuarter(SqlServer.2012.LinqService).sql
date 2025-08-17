BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

