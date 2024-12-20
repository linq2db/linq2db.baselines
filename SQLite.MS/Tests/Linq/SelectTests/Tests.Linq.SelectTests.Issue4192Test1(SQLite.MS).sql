BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4192TableNotNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

