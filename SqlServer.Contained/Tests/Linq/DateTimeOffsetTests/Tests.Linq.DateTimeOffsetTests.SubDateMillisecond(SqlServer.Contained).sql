-- SqlServer.Contained SqlServer.2019
SELECT
	CAST((DateDiff_Big(day, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) AS Int), [t].[TransactionDate]), DateAdd(second, 1, [t].[TransactionDate])) / 100 AS Float) / 10000
FROM
	[Transactions] [t]

