BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [ParentRecord]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [ParentRecord]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [ChildRecord]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER NOT NULL,
	[IsActive] Bit     NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[ParentRecord] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [ChildRecord]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [ParentRecord]

