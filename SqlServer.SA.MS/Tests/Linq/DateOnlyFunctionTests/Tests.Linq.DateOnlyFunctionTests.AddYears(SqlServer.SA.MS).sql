-- SqlServer.SA.MS SqlServer.2019

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

