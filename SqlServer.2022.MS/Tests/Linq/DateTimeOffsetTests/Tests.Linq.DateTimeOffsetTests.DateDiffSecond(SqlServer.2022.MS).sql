BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateDiff_Big(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

