-- SqlServer.2012.MS SqlServer.2012

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

