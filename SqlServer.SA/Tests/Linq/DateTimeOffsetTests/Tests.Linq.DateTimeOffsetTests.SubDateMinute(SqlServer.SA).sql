-- SqlServer.SA SqlServer.2019
SELECT
	CAST((DateDiff_Big(day, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) AS Int), [t].[TransactionDate]), DateAdd(minute, 100, [t].[TransactionDate])) / 100 AS Float) / 600000000
FROM
	[Transactions] [t]

