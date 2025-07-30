BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

