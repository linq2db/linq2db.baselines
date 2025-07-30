BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

