BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

