BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithIdentity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TableWithIdentity]
(
	[Id]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value  -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableWithIdentity]

