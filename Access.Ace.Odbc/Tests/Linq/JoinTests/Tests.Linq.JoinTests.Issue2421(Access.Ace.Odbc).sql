BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [UserDTO]
(
	[UserId]   Int            NOT NULL IDENTITY,
	[UserName] NVarChar(255)      NULL,

	CONSTRAINT [PK_UserDTO] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserPositionDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [UserPositionDTO]
(
	[UserPositionId] Int  NOT NULL IDENTITY,
	[UserId]         Int  NOT NULL,
	[PositionId]     Int  NOT NULL,

	CONSTRAINT [PK_UserPositionDTO] PRIMARY KEY CLUSTERED ([UserPositionId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UPS]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [UPS]
(
	[UserPositionSectorId] Int  NOT NULL IDENTITY,
	[UserPositionId]       Int  NOT NULL,
	[SectorId]             Int  NOT NULL,

	CONSTRAINT [PK_UPS] PRIMARY KEY CLUSTERED ([UserPositionSectorId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PositionDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [PositionDTO]
(
	[PositionId]   Int            NOT NULL IDENTITY,
	[PositionName] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_PositionDTO] PRIMARY KEY CLUSTERED ([PositionId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SectorDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SectorDTO]
(
	[SectorId]   Int            NOT NULL IDENTITY,
	[SectorName] NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_SectorDTO] PRIMARY KEY CLUSTERED ([SectorId])
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[SectorId],
	[a_User].[UserId]
FROM
	(([SectorDTO] [m_1]
		INNER JOIN [UPS] [d] ON ([m_1].[SectorId] = [d].[SectorId]))
		INNER JOIN [UserPositionDTO] [a_UserPosition] ON ([d].[UserPositionId] = [a_UserPosition].[UserPositionId]))
		INNER JOIN [UserDTO] [a_User] ON ([a_UserPosition].[UserId] = [a_User].[UserId])
WHERE
	[a_UserPosition].[PositionId] = 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[SectorId]
FROM
	[SectorDTO] [x]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SectorDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PositionDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UPS]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserPositionDTO]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserDTO]

