BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	DateDiff(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

