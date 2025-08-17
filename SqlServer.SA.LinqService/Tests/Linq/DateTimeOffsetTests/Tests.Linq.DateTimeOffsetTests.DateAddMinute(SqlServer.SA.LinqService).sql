BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[TransactionDate]))
FROM
	[Transactions] [t]

