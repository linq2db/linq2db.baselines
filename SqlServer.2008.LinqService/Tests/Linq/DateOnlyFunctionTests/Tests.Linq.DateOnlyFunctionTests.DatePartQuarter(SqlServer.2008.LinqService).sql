BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

