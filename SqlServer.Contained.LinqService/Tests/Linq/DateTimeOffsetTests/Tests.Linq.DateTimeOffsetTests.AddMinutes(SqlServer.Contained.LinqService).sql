BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

