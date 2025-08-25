BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

