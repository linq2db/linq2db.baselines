-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

