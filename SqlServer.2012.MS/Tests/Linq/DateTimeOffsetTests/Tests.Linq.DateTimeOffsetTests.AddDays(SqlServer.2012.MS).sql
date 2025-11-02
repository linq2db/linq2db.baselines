-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateAdd(day, 5, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

