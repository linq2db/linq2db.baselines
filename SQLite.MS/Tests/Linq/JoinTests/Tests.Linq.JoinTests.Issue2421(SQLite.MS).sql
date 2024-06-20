BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [UserDTO]
(
	[UserId]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[UserName] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserPositionDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [UserPositionDTO]
(
	[UserPositionId] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[UserId]         INTEGER  NOT NULL,
	[PositionId]     INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UPS]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [UPS]
(
	[UserPositionSectorId] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[UserPositionId]       INTEGER  NOT NULL,
	[SectorId]             INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PositionDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PositionDTO]
(
	[PositionId]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[PositionName] NVarChar(255)  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SectorDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SectorDTO]
(
	[SectorId]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[SectorName] NVarChar(255)  NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[x].[SectorId]
FROM
	[SectorDTO] [x]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SectorDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PositionDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UPS]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserPositionDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserDTO]

