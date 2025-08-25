BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

