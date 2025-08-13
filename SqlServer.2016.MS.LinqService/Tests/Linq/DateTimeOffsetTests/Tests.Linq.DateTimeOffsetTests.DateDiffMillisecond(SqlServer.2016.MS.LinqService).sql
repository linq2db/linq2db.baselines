BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

