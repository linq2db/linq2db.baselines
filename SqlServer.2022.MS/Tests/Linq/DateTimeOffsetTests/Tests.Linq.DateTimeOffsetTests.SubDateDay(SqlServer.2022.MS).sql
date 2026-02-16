-- SqlServer.2022.MS SqlServer.2022

SELECT
	CAST(DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

