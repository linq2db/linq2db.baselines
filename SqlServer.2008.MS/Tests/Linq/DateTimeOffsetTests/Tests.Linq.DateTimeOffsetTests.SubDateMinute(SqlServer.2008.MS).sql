BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateDiff(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

