-- SqlServer.2017

SELECT
	CAST(DateAdd(weekday, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

