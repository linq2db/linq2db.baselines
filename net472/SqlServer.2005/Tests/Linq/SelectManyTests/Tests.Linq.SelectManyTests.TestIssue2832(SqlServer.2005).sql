BeforeExecute
-- SqlServer.2005

CREATE TABLE [DctSetpointtype]
(
	[Id] BigInt  NOT NULL IDENTITY,

	CONSTRAINT [PK_DctSetpointtype] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [VWellTree]
(
	[ShopId] Decimal     NULL,
	[WellId] BigInt      NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [DctOu]
(
	[ParentId] BigInt      NULL,
	[Id]       BigInt  NOT NULL IDENTITY,

	CONSTRAINT [PK_DctOu] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [UacUsersDatagroup]
(
	[Inheritablepermission] Int    NOT NULL,
	[Permission]            Int    NOT NULL,
	[DatagroupId]           BigInt NOT NULL,
	[UserId]                BigInt NOT NULL,

	CONSTRAINT [PK_UacUsersDatagroup] PRIMARY KEY CLUSTERED ([UserId], [DatagroupId])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Deviation]
(
	[WellId]         BigInt NOT NULL,
	[SetpointtypeId] BigInt NOT NULL
)

BeforeExecute
-- SqlServer.2005

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
		) [t1] ON [t1].[SetpointtypeId] = [spt].[Id] AND Convert(Decimal(29, 10), [t1].[Permission] + [t1].[Inheritablepermission]) IS NOT NULL

BeforeExecute
-- SqlServer.2005

DROP TABLE [Deviation]

BeforeExecute
-- SqlServer.2005

DROP TABLE [UacUsersDatagroup]

BeforeExecute
-- SqlServer.2005

DROP TABLE [DctOu]

BeforeExecute
-- SqlServer.2005

DROP TABLE [VWellTree]

BeforeExecute
-- SqlServer.2005

DROP TABLE [DctSetpointtype]

