BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[TransactionDate]))
FROM
	[Transactions] [t]

