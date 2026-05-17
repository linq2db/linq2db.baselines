-- SqlServer.2014

SELECT
	CAST(DateAdd(week, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

