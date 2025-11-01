-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

