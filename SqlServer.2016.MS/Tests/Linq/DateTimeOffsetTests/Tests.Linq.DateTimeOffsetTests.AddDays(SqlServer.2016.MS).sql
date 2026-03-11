-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateAdd(day, 5, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

