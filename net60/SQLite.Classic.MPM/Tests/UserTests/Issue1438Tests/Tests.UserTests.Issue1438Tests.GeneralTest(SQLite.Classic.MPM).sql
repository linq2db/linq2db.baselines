BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1438]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1438]
(
	[Id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Has] Bit      NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Has  -- Boolean
SET     @Has = 1

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[_].[Id],
	[_].[Has]
FROM
	[Issue1438] [_]
WHERE
	[_].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1438]

