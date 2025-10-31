-- SqlServer.2017

SELECT
	CAST(DateAdd(day, 5, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

