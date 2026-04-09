-- SQLite.MS SQLite

WITH [accountsInfo]
(
	[Id],
	[Number_1],
	[Type_1],
	[Name],
	[incomeBalance],
	[outgoingBalance]
)
AS
(
	SELECT
		[a].[Id],
		[a].[Number],
		[a].[Type],
		[a].[Name],
		1,
		2
	FROM
		[Account] [a]
	WHERE
		[a].[Id] IN (1, 2, 3, 4)
)
SELECT
	[t2].[AccountId],
	[t2].[AccountNumber],
	[t2].[AccountType],
	[t2].[AccountName],
	(
		SELECT
			MAX([t5].[OperDate])
		FROM
			(
				SELECT
					[t3].[OperDate]
				FROM
					[Transaction] [t3]
				WHERE
					[t3].[DebitAccountId] = [t2].[AccountId]
				UNION
				SELECT
					[t4].[OperDate]
				FROM
					[Transaction] [t4]
				WHERE
					[t4].[CreditAccountId] = [t2].[AccountId]
			) [t5]
	),
	[t2].[IncomeBalance],
	[t2].[OutgoingBalance]
FROM
	(
		SELECT
			[t1].[Id] as [AccountId],
			[t1].[Number_1] as [AccountNumber],
			[t1].[Type_1] as [AccountType],
			[t1].[Name] as [AccountName],
			[t1].[incomeBalance] as [IncomeBalance],
			[t1].[outgoingBalance] as [OutgoingBalance]
		FROM
			[accountsInfo] [t1]
	) [t2]

