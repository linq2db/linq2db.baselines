BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserDTO]', N'U') IS NOT NULL)
	DROP TABLE [UserDTO]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserDTO]', N'U') IS NULL)
	CREATE TABLE [UserDTO]
	(
		[UserId]   Int             NOT NULL IDENTITY,
		[UserName] NVarChar(4000)      NULL,

		CONSTRAINT [PK_UserDTO] PRIMARY KEY CLUSTERED ([UserId])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserPositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [UserPositionDTO]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserPositionDTO]', N'U') IS NULL)
	CREATE TABLE [UserPositionDTO]
	(
		[UserPositionId] Int  NOT NULL IDENTITY,
		[UserId]         Int  NOT NULL,
		[PositionId]     Int  NOT NULL,

		CONSTRAINT [PK_UserPositionDTO] PRIMARY KEY CLUSTERED ([UserPositionId])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UPS]', N'U') IS NOT NULL)
	DROP TABLE [UPS]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UPS]', N'U') IS NULL)
	CREATE TABLE [UPS]
	(
		[UserPositionSectorId] Int  NOT NULL IDENTITY,
		[UserPositionId]       Int  NOT NULL,
		[SectorId]             Int  NOT NULL,

		CONSTRAINT [PK_UPS] PRIMARY KEY CLUSTERED ([UserPositionSectorId])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[PositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [PositionDTO]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[PositionDTO]', N'U') IS NULL)
	CREATE TABLE [PositionDTO]
	(
		[PositionId]   Int             NOT NULL IDENTITY,
		[PositionName] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_PositionDTO] PRIMARY KEY CLUSTERED ([PositionId])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SectorDTO]', N'U') IS NOT NULL)
	DROP TABLE [SectorDTO]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SectorDTO]', N'U') IS NULL)
	CREATE TABLE [SectorDTO]
	(
		[SectorId]   Int             NOT NULL IDENTITY,
		[SectorName] NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_SectorDTO] PRIMARY KEY CLUSTERED ([SectorId])
	)

BeforeExecute
-- SqlServer.2014

SELECT
	[m_1].[SectorId],
	[a_User].[UserId]
FROM
	[SectorDTO] [m_1]
		INNER JOIN [UPS] [d] ON [m_1].[SectorId] = [d].[SectorId]
		INNER JOIN [UserPositionDTO] [a_UserPosition] ON [d].[UserPositionId] = [a_UserPosition].[UserPositionId]
		INNER JOIN [UserDTO] [a_User] ON [a_UserPosition].[UserId] = [a_User].[UserId]
WHERE
	[a_UserPosition].[PositionId] = 1

BeforeExecute
-- SqlServer.2014

SELECT
	[x].[SectorId]
FROM
	[SectorDTO] [x]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SectorDTO]', N'U') IS NOT NULL)
	DROP TABLE [SectorDTO]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[PositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [PositionDTO]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UPS]', N'U') IS NOT NULL)
	DROP TABLE [UPS]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserPositionDTO]', N'U') IS NOT NULL)
	DROP TABLE [UserPositionDTO]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserDTO]', N'U') IS NOT NULL)
	DROP TABLE [UserDTO]

