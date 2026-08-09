-- SqlServer.2017
SELECT
	CAST((DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) AS Int), [t].[TransactionDate]), DateAdd(hour, 100, [t].[TransactionDate])) / 100 AS Float) / 36000000000
FROM
	[Transactions] [t]

