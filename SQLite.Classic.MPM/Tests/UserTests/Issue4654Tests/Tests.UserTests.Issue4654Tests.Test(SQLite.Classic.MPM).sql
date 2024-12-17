BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4654Customer]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4654Customer]
(
	[Id]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4654Order]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4654Order]
(
	[Id]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ProductName] NVarChar(255)      NULL,
	[Quantity]    INTEGER        NOT NULL,
	[CustomerId]  INTEGER        NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4654Product]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4654Product]
(
	[Id]    INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name]  NVarChar(255)      NULL,
	[Price] Decimal        NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CAST([c_1].[Id] AS NVarChar),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST([o].[Id] AS NVarChar),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST([p].[Id] AS NVarChar),
	[p].[Name]
FROM
	[Issue4654Product] [p]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4654Product]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4654Order]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4654Customer]

