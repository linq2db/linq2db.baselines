BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Left]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Left]
(
	[LeftId]   INTEGER       NOT NULL,
	[LeftData] NVarChar(255)     NULL,

	CONSTRAINT [PK_Left] PRIMARY KEY ([LeftId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Left]
(
	[LeftId],
	[LeftData]
)
VALUES
(1,NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Right]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Right]
(
	[RightId]   Blob          NOT NULL,
	[RightData] NVarChar(255)     NULL,

	CONSTRAINT [PK_Right] PRIMARY KEY ([RightId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Right]
(
	[RightId],
	[RightData]
)
VALUES
(X'02',NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [LeftRight]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [LeftRight]
(
	[LeftId]  INTEGER NOT NULL,
	[RightId] Blob    NOT NULL,

	CONSTRAINT [PK_LeftRight] PRIMARY KEY ([LeftId], [RightId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [LeftRight]
(
	[LeftId],
	[RightId]
)
VALUES
(1,X'02')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[LeftId],
	[t1].[RightId],
	[a_Left].[LeftId],
	[a_Left].[LeftData],
	[a_Right].[RightId],
	[a_Right].[RightData]
FROM
	[LeftRight] [t1]
		LEFT JOIN [Left] [a_Left] ON [t1].[LeftId] = [a_Left].[LeftId]
		LEFT JOIN [Right] [a_Right] ON [t1].[RightId] = [a_Right].[RightId]
LIMIT 1

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[LeftId],
	[d].[LeftId],
	[d].[RightId]
FROM
	(
		SELECT
			[t1].[LeftId]
		FROM
			[Left] [t1]
		LIMIT 1
	) [m_1]
		INNER JOIN [LeftRight] [d] ON [m_1].[LeftId] = [d].[LeftId]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[LeftId],
	[t1].[LeftData]
FROM
	[Left] [t1]
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[RightId],
	[d].[LeftId],
	[d].[RightId]
FROM
	(
		SELECT
			[t1].[RightId]
		FROM
			[Right] [t1]
		LIMIT 1
	) [m_1]
		INNER JOIN [LeftRight] [d] ON [m_1].[RightId] = [d].[RightId]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[RightId],
	[t1].[RightData]
FROM
	[Right] [t1]
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [LeftRight]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Right]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Left]

