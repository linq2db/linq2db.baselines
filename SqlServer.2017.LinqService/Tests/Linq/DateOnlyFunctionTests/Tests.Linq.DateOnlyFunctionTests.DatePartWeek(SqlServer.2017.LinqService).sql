BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

