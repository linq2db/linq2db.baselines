-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

