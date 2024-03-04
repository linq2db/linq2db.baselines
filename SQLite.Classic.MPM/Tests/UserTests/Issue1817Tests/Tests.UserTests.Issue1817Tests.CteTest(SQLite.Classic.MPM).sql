BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Account]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Account]
(
	[Id]     BigInt        NOT NULL,
	[Number] NVarChar(255)     NULL,
	[Name]   NVarChar(255)     NULL,
	[Type]   INTEGER       NOT NULL,
	[State]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Transaction]
(
	[Id]              BigInt    NOT NULL,
	[RequestId]       BigInt    NOT NULL,
	[OperDate]        DateTime2 NOT NULL,
	[DebitAccountId]  BigInt    NOT NULL,
	[CreditAccountId] BigInt    NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [accountsInfo]
(
	[Id],
	[Number],
	[Type],
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
	[t1].[Number],
	[t1].[Type],
	[t1].[Name],
	(
		SELECT
			Max([t2].[OperDate])
		FROM
			(
				SELECT
					[_].[OperDate]
				FROM
					[Transaction] [_]
				WHERE
					[_].[DebitAccountId] = [t1].[Id]
				UNION
				SELECT
					[_1].[OperDate]
				FROM
					[Transaction] [_1]
				WHERE
					[_1].[CreditAccountId] = [t1].[Id]
			) [t2]
	),
	[t1].[incomeBalance],
	[t1].[outgoingBalance]
FROM
	[accountsInfo] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transaction]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Account]

