-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

