BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

