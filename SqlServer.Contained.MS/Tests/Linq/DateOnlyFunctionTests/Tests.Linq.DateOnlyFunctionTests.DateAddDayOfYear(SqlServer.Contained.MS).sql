-- SqlServer.Contained.MS SqlServer.2019

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

