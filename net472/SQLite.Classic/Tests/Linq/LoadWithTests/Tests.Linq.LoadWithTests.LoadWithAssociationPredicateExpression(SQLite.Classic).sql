﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ParentRecord]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ParentRecord]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [ParentRecord]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildRecord]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ChildRecord]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER NOT NULL,
	[IsActive] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [ChildRecord]
(
	[Id],
	[ParentId],
	[IsActive]
)
VALUES
(11,1,1),
(12,1,0),
(13,1,1)

BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[lw_ParentRecord].[Id],
	[detail].[Id],
	[detail].[ParentId],
	[detail].[IsActive]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[ParentRecord] [t1]
	) [lw_ParentRecord]
		INNER JOIN [ChildRecord] [detail] ON [lw_ParentRecord].[Id] = [detail].[ParentId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[lw_ParentRecord].[Id],
	[detail].[Id],
	[detail].[ParentId],
	[detail].[IsActive]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[ParentRecord] [t1]
	) [lw_ParentRecord]
		INNER JOIN [ChildRecord] [detail] ON [lw_ParentRecord].[Id] = [detail].[ParentId] AND [detail].[IsActive] = 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[ParentRecord] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ChildRecord]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ParentRecord]

