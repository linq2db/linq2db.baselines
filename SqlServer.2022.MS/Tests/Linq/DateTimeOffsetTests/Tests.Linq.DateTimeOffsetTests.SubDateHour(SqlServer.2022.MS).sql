-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

