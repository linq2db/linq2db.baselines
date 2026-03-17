-- SqlServer.2017

SELECT
	CAST(DateAdd(quarter, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

