BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1438]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1438]
(
	[Id]  INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Has] Bit      NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Id],
	[t1].[Has]
FROM
	[Issue1438] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1438]

