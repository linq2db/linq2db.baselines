BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserDTO') IS NOT NULL)
	DROP TABLE [UserDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [UserDTO]
		(
			[UserId]   Int           IDENTITY NOT NULL,
			[UserName] NVarChar(255)              NULL,

			CONSTRAINT [PK_UserDTO] PRIMARY KEY CLUSTERED ([UserId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserPositionDTO') IS NOT NULL)
	DROP TABLE [UserPositionDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserPositionDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [UserPositionDTO]
		(
			[UserPositionId] Int IDENTITY NOT NULL,
			[UserId]         Int          NOT NULL,
			[PositionId]     Int          NOT NULL,

			CONSTRAINT [PK_UserPositionDTO] PRIMARY KEY CLUSTERED ([UserPositionId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UPS') IS NOT NULL)
	DROP TABLE [UPS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UPS') IS NULL)
	EXECUTE('
		CREATE TABLE [UPS]
		(
			[UserPositionSectorId] Int IDENTITY NOT NULL,
			[UserPositionId]       Int          NOT NULL,
			[SectorId]             Int          NOT NULL,

			CONSTRAINT [PK_UPS] PRIMARY KEY CLUSTERED ([UserPositionSectorId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PositionDTO') IS NOT NULL)
	DROP TABLE [PositionDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PositionDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [PositionDTO]
		(
			[PositionId]   Int           IDENTITY NOT NULL,
			[PositionName] NVarChar(255)          NOT NULL,

			CONSTRAINT [PK_PositionDTO] PRIMARY KEY CLUSTERED ([PositionId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SectorDTO') IS NOT NULL)
	DROP TABLE [SectorDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SectorDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [SectorDTO]
		(
			[SectorId]   Int           IDENTITY NOT NULL,
			[SectorName] NVarChar(255)          NOT NULL,

			CONSTRAINT [PK_SectorDTO] PRIMARY KEY CLUSTERED ([SectorId])
		)
	')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[SectorId]
FROM
	[SectorDTO] [x]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SectorDTO') IS NOT NULL)
	DROP TABLE [SectorDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PositionDTO') IS NOT NULL)
	DROP TABLE [PositionDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UPS') IS NOT NULL)
	DROP TABLE [UPS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserPositionDTO') IS NOT NULL)
	DROP TABLE [UserPositionDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserDTO') IS NOT NULL)
	DROP TABLE [UserDTO]

