BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

