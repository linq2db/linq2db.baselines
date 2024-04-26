BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Account]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Account]
(
	[Id]     BigInt        NOT NULL,
	[Number] NVarChar(255)     NULL,
	[Name]   NVarChar(255)     NULL,
	[Type]   INTEGER       NOT NULL,
	[State]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Transaction]
(
	[Id]              BigInt    NOT NULL,
	[RequestId]       BigInt    NOT NULL,
	[OperDate]        DateTime2 NOT NULL,
	[DebitAccountId]  BigInt    NOT NULL,
	[CreditAccountId] BigInt    NOT NULL
)

BeforeExecute
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

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Account]

