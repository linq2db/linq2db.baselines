BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

