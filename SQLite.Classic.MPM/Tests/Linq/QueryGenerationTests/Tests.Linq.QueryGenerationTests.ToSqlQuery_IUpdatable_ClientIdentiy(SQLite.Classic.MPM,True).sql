BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithIdentity]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithIdentity]
(
	[Id]    INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[TableWithIdentity]
SET
	[Id] = 492,
	[Value] = 123

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithIdentity]

