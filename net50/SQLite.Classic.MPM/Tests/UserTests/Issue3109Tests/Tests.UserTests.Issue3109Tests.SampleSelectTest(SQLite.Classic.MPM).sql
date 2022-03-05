﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Left]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Left]
(
	[LeftId]   INTEGER       NOT NULL,
	[LeftData] NVarChar(255)     NULL,

	CONSTRAINT [PK_Left] PRIMARY KEY ([LeftId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Left]
(
	[LeftId],
	[LeftData]
)
VALUES
(1,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Right]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Right]
(
	[RightId]   Blob          NOT NULL,
	[RightData] NVarChar(255)     NULL,

	CONSTRAINT [PK_Right] PRIMARY KEY ([RightId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Right]
(
	[RightId],
	[RightData]
)
VALUES
(X'02',NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeftRight]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [LeftRight]
(
	[LeftId]  INTEGER NOT NULL,
	[RightId] Blob    NOT NULL,

	CONSTRAINT [PK_LeftRight] PRIMARY KEY ([LeftId], [RightId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [LeftRight]
(
	[LeftId],
	[RightId]
)
VALUES
(1,X'02')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

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
LIMIT @take

BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Left].[LeftId],
	[detail].[LeftId],
	[detail].[RightId]
FROM
	(
		SELECT DISTINCT
			[t2].[LeftId]
		FROM
			(
				SELECT
					[t1].[LeftId]
				FROM
					[Left] [t1]
				LIMIT @take
			) [t2]
	) [lw_Left]
		INNER JOIN [LeftRight] [detail] ON [lw_Left].[LeftId] = [detail].[LeftId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[LeftId],
	[t1].[LeftData]
FROM
	[Left] [t1]
LIMIT @take

BeforeExecute
RollbackTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Right].[RightId],
	[detail].[LeftId],
	[detail].[RightId]
FROM
	(
		SELECT DISTINCT
			[t2].[RightId]
		FROM
			(
				SELECT
					[t1].[RightId]
				FROM
					[Right] [t1]
				LIMIT @take
			) [t2]
	) [lw_Right]
		INNER JOIN [LeftRight] [detail] ON [lw_Right].[RightId] = [detail].[RightId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[RightId],
	[t1].[RightData]
FROM
	[Right] [t1]
LIMIT @take

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeftRight]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Right]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Left]

