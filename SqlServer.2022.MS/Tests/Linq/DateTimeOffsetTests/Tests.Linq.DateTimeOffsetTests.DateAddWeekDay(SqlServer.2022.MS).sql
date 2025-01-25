BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateAdd(weekday, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

