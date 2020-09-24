BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Account]
(
	[Id]     BigInt        NOT NULL,
	[Number] NVarChar(255)     NULL,
	[Name]   NVarChar(255)     NULL,
	[Type]   INTEGER       NOT NULL,
	[State]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Transaction]
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
	[cte].[Id],
	[cte].[Number],
	[cte].[Type],
	[cte].[Name],
	(
		SELECT
			Max([t1].[OperDate])
		FROM
			(
				SELECT
					[_].[OperDate]
				FROM
					[Transaction] [_]
				WHERE
					[_].[DebitAccountId] = [cte].[Id]
				UNION
				SELECT
					[_1].[OperDate]
				FROM
					[Transaction] [_1]
				WHERE
					[_1].[CreditAccountId] = [cte].[Id]
			) [t1]
	),
	[cte].[incomeBalance],
	[cte].[outgoingBalance]
FROM
	[accountsInfo] [cte]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Transaction]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Account]

