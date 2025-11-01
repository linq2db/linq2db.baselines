-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateAdd(week, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

