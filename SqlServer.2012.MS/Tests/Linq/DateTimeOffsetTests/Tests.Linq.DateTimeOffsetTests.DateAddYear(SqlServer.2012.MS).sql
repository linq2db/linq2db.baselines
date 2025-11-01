-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

