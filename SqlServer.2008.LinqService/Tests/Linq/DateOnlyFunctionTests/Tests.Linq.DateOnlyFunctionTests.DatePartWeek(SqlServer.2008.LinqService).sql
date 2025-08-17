BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

