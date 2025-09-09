BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

