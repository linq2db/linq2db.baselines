BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithIdentity]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithIdentity]
(
	[Id]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
VALUES
(
	543,
	@value
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithIdentity]

