BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

