BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	DateDiff_Big(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

