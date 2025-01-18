BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

