-- SqlServer.Contained.MS SqlServer.2019
SELECT
	CAST((DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) AS Int), [t].[TransactionDate]), DateAdd(hour, 96, [t].[TransactionDate])) / 100 AS Float) / 864000000000
FROM
	[Transactions] [t]

