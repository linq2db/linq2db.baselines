BeforeExecute
-- SqlCe

DROP TABLE [UserDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [UserDTO]
(
	[UserId]   Int            NOT NULL IDENTITY,
	[UserName] NVarChar(255)      NULL,

	CONSTRAINT [PK_UserDTO] PRIMARY KEY ([UserId])
)

BeforeExecute
-- SqlCe

DROP TABLE [UserPositionDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [UserPositionDTO]
(
	[UserPositionId] Int  NOT NULL IDENTITY,
	[UserId]         Int  NOT NULL,
	[PositionId]     Int  NOT NULL,

	CONSTRAINT [PK_UserPositionDTO] PRIMARY KEY ([UserPositionId])
)

BeforeExecute
-- SqlCe

DROP TABLE [UPS]

BeforeExecute
-- SqlCe

CREATE TABLE [UPS]
(
	[UserPositionSectorId] Int  NOT NULL IDENTITY,
	[UserPositionId]       Int  NOT NULL,
	[SectorId]             Int  NOT NULL,

	CONSTRAINT [PK_UPS] PRIMARY KEY ([UserPositionSectorId])
)

BeforeExecute
-- SqlCe

DROP TABLE [PositionDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [PositionDTO]
(
	[PositionId]   Int            NOT NULL IDENTITY,
	[PositionName] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_PositionDTO] PRIMARY KEY ([PositionId])
)

BeforeExecute
-- SqlCe

DROP TABLE [SectorDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [SectorDTO]
(
	[SectorId]   Int            NOT NULL IDENTITY,
	[SectorName] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_SectorDTO] PRIMARY KEY ([SectorId])
)

BeforeExecute
-- SqlCe

SELECT
	[m_1].[SectorId],
	[a_User].[UserId] as [Detail]
FROM
	[SectorDTO] [m_1]
		INNER JOIN [UPS] [d] ON [m_1].[SectorId] = [d].[SectorId]
		INNER JOIN [UserPositionDTO] [a_UserPosition] ON [d].[UserPositionId] = [a_UserPosition].[UserPositionId]
		INNER JOIN [UserDTO] [a_User] ON [a_UserPosition].[UserId] = [a_User].[UserId]
WHERE
	[a_UserPosition].[PositionId] = 1

BeforeExecute
-- SqlCe

SELECT
	[x].[SectorId]
FROM
	[SectorDTO] [x]

BeforeExecute
-- SqlCe

DROP TABLE [SectorDTO]

BeforeExecute
-- SqlCe

DROP TABLE [PositionDTO]

BeforeExecute
-- SqlCe

DROP TABLE [UPS]

BeforeExecute
-- SqlCe

DROP TABLE [UserPositionDTO]

BeforeExecute
-- SqlCe

DROP TABLE [UserDTO]

