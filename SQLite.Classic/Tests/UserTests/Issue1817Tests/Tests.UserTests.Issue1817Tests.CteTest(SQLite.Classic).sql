BeforeExecute
-- SQLite.Classic SQLite

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
	[t1].[Id],
	[t1].[Number_1],
	[t1].[Type_1],
	[t1].[Name],
	(
		SELECT
			MAX([t4].[OperDate])
		FROM
			(
				SELECT
					[t2].[OperDate]
				FROM
					[Transaction] [t2]
				WHERE
					[t2].[DebitAccountId] = [t1].[Id]
				UNION
				SELECT
					[t3].[OperDate]
				FROM
					[Transaction] [t3]
				WHERE
					[t3].[CreditAccountId] = [t1].[Id]
			) [t4]
	),
	[t1].[incomeBalance],
	[t1].[outgoingBalance]
FROM
	[accountsInfo] [t1]

