-- SqlServer.Contained SqlServer.2019

SELECT
	CAST(DateAdd(month, 2, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

