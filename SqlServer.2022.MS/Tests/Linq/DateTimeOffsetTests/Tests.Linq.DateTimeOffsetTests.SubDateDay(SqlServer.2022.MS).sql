BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

