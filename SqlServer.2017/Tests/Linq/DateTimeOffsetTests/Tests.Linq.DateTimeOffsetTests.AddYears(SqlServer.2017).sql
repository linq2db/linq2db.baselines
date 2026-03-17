-- SqlServer.2017

SELECT
	CAST(DateAdd(year, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

