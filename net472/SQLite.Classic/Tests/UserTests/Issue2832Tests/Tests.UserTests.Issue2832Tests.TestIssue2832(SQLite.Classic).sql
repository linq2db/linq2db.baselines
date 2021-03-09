BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [DctSetpointtype]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_DctSetpointtype] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [VWellTree]
(
	[ShopId] Decimal     NULL,
	[WellId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [DctOu]
(
	[ParentId] INTEGER     NULL,
	[Id]       INTEGER NOT NULL,

	CONSTRAINT [PK_DctOu] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [UacUsersDatagroup]
(
	[Inheritablepermission] INTEGER NOT NULL,
	[Permission]            INTEGER NOT NULL,
	[DatagroupId]           INTEGER NOT NULL,
	[UserId]                INTEGER NOT NULL,

	CONSTRAINT [PK_UacUsersDatagroup] PRIMARY KEY ([UserId], [DatagroupId])
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Deviation]
(
	[WellId]         INTEGER NOT NULL,
	[SetpointtypeId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[spt].[Id]
FROM
	[DctSetpointtype] [spt]
		LEFT JOIN (
			SELECT
				[d].[SetpointtypeId],
				[cudg].[Permission],
				[oudg].[Inheritablepermission]
			FROM
				[VWellTree] [w]
					INNER JOIN [DctOu] [c_1] ON [w].[ShopId] = [c_1].[Id]
					LEFT JOIN [UacUsersDatagroup] [oudg] ON [c_1].[ParentId] = [oudg].[DatagroupId] AND [oudg].[UserId] = 150 AND [oudg].[Inheritablepermission] > 0
					LEFT JOIN [UacUsersDatagroup] [cudg] ON [c_1].[Id] = [cudg].[DatagroupId] AND [cudg].[UserId] = 150
					INNER JOIN [Deviation] [d] ON [w].[WellId] = [d].[WellId]
		) [t1] ON [t1].[SetpointtypeId] = [spt].[Id] AND Cast(([t1].[Permission] + [t1].[Inheritablepermission]) as Decimal(29, 10)) IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Deviation]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [UacUsersDatagroup]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [DctOu]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [VWellTree]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [DctSetpointtype]

