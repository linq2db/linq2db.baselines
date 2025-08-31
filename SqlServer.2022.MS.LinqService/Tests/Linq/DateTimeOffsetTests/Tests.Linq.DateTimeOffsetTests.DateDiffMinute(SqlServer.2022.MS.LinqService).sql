BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateDiff_Big(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

