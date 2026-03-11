-- SqlServer.2016

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

